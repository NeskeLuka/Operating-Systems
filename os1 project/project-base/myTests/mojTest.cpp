#include "../h/syscall_c.h"

void myprintString(const char *string) {
    while (*string != '\0') {
        putc(*string);
        string++;
    }
}

void myprintInt(int val) {
    if (val == 0) {
        putc('0');
        return;
    }
    if (val < 0) {
        putc('-');
        val = -val;
    }
    char buffer[20];
    int i = 0;
    while (val > 0) {
        buffer[i++] = (val % 10) + '0';
        val /= 10;
    }
    while (i > 0) {
        putc(buffer[--i]);
    }
}

// Globalni semafor pomoću kog userMain čeka kraj svih niti
sem_t testFinishedSem;

// ==========================================
// TEST 1: Rekurzija i čuvanje steka
// ==========================================
int rekurzijaFaktorijel(int n) {
    thread_dispatch(); // Nasilno prekidamo nit da vidimo da li stek preživljava
    if (n <= 1) return 1;
    return n * rekurzijaFaktorijel(n - 1);
}

void recursionThread(void* arg) {
    myprintString("[Test 1] Zapocinjem rekurziju...\n");
    int rezultat = rekurzijaFaktorijel(5);

    myprintString("[Test 1] Faktorijel od 5 je: ");
    myprintInt(rezultat); // Treba da bude 120
    myprintString("\n");

    sem_signal(testFinishedSem);
}

// ==========================================
// TEST 2: Single-Buffer Producer-Consumer
// ==========================================
sem_t mutexSingle, spaceSingle, itemSingle;
int singleBuffer = 0;

void producerSingle(void* arg) {
    for (int i = 1; i <= 3; i++) {
        sem_wait(spaceSingle);
        sem_wait(mutexSingle);

        singleBuffer = i;
        myprintString("[Test 2 - Producer] Upisao u bafer: ");
        myprintInt(singleBuffer);
        myprintString("\n");

        sem_signal(mutexSingle);
        sem_signal(itemSingle);
        thread_dispatch(); // Nasilna promena
    }
    sem_signal(testFinishedSem);
}

void consumerSingle(void* arg) {
    for (int i = 1; i <= 3; i++) {
        sem_wait(itemSingle);
        sem_wait(mutexSingle);

        int vrednost = singleBuffer;
        myprintString("[Test 2 - Consumer] Procitao iz bafera: ");
        myprintInt(vrednost);
        myprintString("\n");

        sem_signal(mutexSingle);
        sem_signal(spaceSingle);
        thread_dispatch(); // Nasilna promena
    }
    sem_signal(testFinishedSem);
}

// ==========================================
// TEST 3: Multi-Resource (Wait_N i Signal_N)
// ==========================================
sem_t poolSem; // Bazen resursa, inicijalno npr. 5
sem_t mutexPrint; // Da nam se slova ne bi preklopila na ekranu

void greedyWorker(void* arg) {
    sem_wait(mutexPrint);
    myprintString("[Test 3] Greedy nit pokusava da uzme 4 resursa...\n");
    sem_signal(mutexPrint);

    sem_wait_n(poolSem, 4); // Ovo bi trebalo da je blokira dok ne bude dovoljno resursa

    sem_wait(mutexPrint);
    myprintString("[Test 3] Greedy nit je UZELA 4 resursa!\n");
    sem_signal(mutexPrint);

    thread_dispatch(); // Simulacija rada

    sem_wait(mutexPrint);
    myprintString("[Test 3] Greedy nit oslobadja 4 resursa.\n");
    sem_signal(mutexPrint);

    sem_signal_n(poolSem, 4);
    sem_signal(testFinishedSem);
}

void modestWorker(void* arg) {
    sem_wait(mutexPrint);
    myprintString("[Test 3] Modest nit uzima 2 resursa...\n");
    sem_signal(mutexPrint);

    sem_wait_n(poolSem, 2);

    sem_wait(mutexPrint);
    myprintString("[Test 3] Modest nit je UZELA 2 resursa!\n");
    sem_signal(mutexPrint);

    thread_dispatch(); // Simulacija rada

    sem_wait(mutexPrint);
    myprintString("[Test 3] Modest nit oslobadja 2 resursa.\n");
    sem_signal(mutexPrint);

    sem_signal_n(poolSem, 2);
    sem_signal(testFinishedSem);
}

// ==========================================
// GLAVNA KORISNIČKA FUNKCIJA (userMain)
// ==========================================
void cynhroneSemTest1() {
    myprintString("=== Pocinje korisnicki test ===\n");

    // Inicijalizacija semafora
    sem_open(&testFinishedSem, 0); // Krece od 0, niti ga signaliziraju na kraju
    sem_open(&mutexSingle, 1);
    sem_open(&spaceSingle, 1);     // Samo jedno mesto u baferu
    sem_open(&itemSingle, 0);      // Inicijalno prazno

    sem_open(&poolSem, 5);         // Bazen od 5 resursa
    sem_open(&mutexPrint, 1);      // Zastita ispisa

    thread_t threads[6];

    // Kreiranje niti
    thread_create(&threads[0], recursionThread, nullptr);
    thread_create(&threads[1], producerSingle, nullptr);
    thread_create(&threads[2], consumerSingle, nullptr);

    // Test 3 raspored: 
    // Modest1 odmah uzima 2 (ostaje 3). Greedy hoce 4 (BLOKIRA SE). Modest2 hoce 2 (ostaje 1).
    // Modesti vrate resurse, Greedy se budi i uzima 4.
    thread_create(&threads[3], modestWorker, nullptr);
    thread_create(&threads[4], greedyWorker, nullptr);
    thread_create(&threads[5], modestWorker, nullptr);

    // Glavna nit ceka da se zavrsi svih 6 radnih niti
    for (int i = 0; i < 6; i++) {
        sem_wait(testFinishedSem); // Ekvivalent join() komande
    }

    myprintString("=== Svi testovi su uspesno zavrseni ===\n");

    // Čišćenje memorije (dealokacija semafora)
    sem_close(testFinishedSem);
    sem_close(mutexSingle);
    sem_close(spaceSingle);
    sem_close(itemSingle);
    sem_close(poolSem);
    sem_close(mutexPrint);
}