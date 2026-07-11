#include "../h/syscall_c.h"
#include "../h/tcb.hpp"
// Globalni semafor za sinhronizaciju glavne niti sa radnim nitima
sem_t finished_sem;

// Rutina koju izvršava svaka od 70 niti
void worker_thread(void *arg) {
    if (arg == nullptr) {
        thread_exit();
        return;
    }

    // Kastujemo argument nazad u karakter koji ova nit treba da ispiše
    char c = *(char*)arg;

    // Ispisivanje dodeljenog slova na ekran
    putc(c);

    // Signaliziramo glavnoj niti da smo završili sa ispisom
    sem_signal(finished_sem);

    // Eksplicitno gasimo nit i oslobađamo njene resurse
    thread_exit();
}

int Seventymain() {
    const int NUM_THREADS = 70;
    thread_t threads[NUM_THREADS];
    char characters[NUM_THREADS];

    // Otvaramo semafor sa početnom vrednošću 0.
    // Glavna nit će se blokirati na sem_wait sve dok radne niti ne urade sem_signal.
    if (sem_open(&finished_sem, 0) < 0) {
        // Neuspešno kreiranje semafora
        return -1;
    }

    // Inicijalizujemo niz karaktera koje ćemo proslediti nitima.
    // Koristimo rotaciju kroz velika slova abecede ('A' do 'Z') radi lakše vizuelizacije.
    for (int i = 0; i < NUM_THREADS; i++) {
        characters[i] = 'A' + (i % 26);
    }

    // Kreiranje 70 uporedno aktivnih niti
    for (int i = 0; i < NUM_THREADS; i++) {
        int res = thread_create(&threads[i], worker_thread, &characters[i]);
        if (res < 0) {
            // Ovde možete dodati logiku u slučaju da kreiranje niti ne uspe
        }
    }

    // Čekamo da svih 70 niti završi rad.
    // Pozivamo sem_wait 70 puta. Alternativno, ukoliko vaš kernel ima potpuno 
    // implementiran sem_wait_n, možete iskoristiti: sem_wait_n(finished_sem, NUM_THREADS);
    for (int i = 0; i < NUM_THREADS; i++) {
        sem_wait(finished_sem);
    }

    // Nakon što su sve niti završile, bezbedno zatvaramo semafor
    sem_close(finished_sem);

    // Ispisujemo novi red na samom kraju testa
    for (int i = 0; i < NUM_THREADS; i++) {
        delete threads[i];
    }

    return 0;
}