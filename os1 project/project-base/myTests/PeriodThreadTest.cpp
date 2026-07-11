#include "../h/syscall_cpp.hpp"
void printStringPeriodic(const char* str) {
    while (*str) {
        Console::putc(*str++);
    }
}

class MojPeriodicniRadnik : public PeriodicThread {
private:
    int brojac;
public:
    MojPeriodicniRadnik(time_t period) : PeriodicThread(period), brojac(0) {}

protected:
    void periodicActivation() override {
        printStringPeriodic("[Periodicna Nit] Aktivacija broj: ");

        Console::putc('0' + (brojac % 10));
        printStringPeriodic("\n");

        brojac++;
    }
};

void periodicMain() {
    printStringPeriodic("--- START TESTA ---\n");

    // 1. Kreiramo periodicnu nit sa periodom od npr. 5 vremenskih jedinica
    printStringPeriodic("Glavna nit: Kreiram periodicnu nit sa periodom 5...\n");
    MojPeriodicniRadnik* radnik = new MojPeriodicniRadnik(5);

    // 2. Pokrecemo nit
    printStringPeriodic("Glavna nit: Pokrecem radnika...\n");
    if (radnik->start() < 0) {
        printStringPeriodic("Greska: Nit nije uspesno pokrenuta!\n");
        delete radnik;
    }

    // 3. Glavna nit spava 22 vremenske jedinice
    // Za to vreme, radnik bi trebao da se aktivira oko 4 puta (na 0, 5, 10, 15, 20)
    printStringPeriodic("Glavna nit: Odlazim na spavanje (vreme: 22)...\n\n");
    Thread::sleep(20);

    // 4. Gasimo periodicnu nit
    printStringPeriodic("\nGlavna nit: Budjenje! Pozivam terminate()...\n");
    radnik->terminate();

    // 5. Dajemo periodicni niti malo vremena da se probudi iz svog sleep-a,
    // vidi da je period postao 0, i bezbedno zavrsi rad.
    printStringPeriodic("Glavna nit: Cekam da se periodicna nit ugasi...\n");
    Thread::sleep(10);

    // 6. Unistavamo objekat
    printStringPeriodic("Glavna nit: Brisem objekat niti iz memorije...\n");
    delete radnik;

    printStringPeriodic("--- KRAJ TESTA (Uspesno!) ---\n");
}