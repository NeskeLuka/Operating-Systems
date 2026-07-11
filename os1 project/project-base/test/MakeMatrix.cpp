#include "printing.hpp"
#include "../h/syscall_cpp.hpp"

#define ROWS 5
#define COLS 4

// 1. Izvodimo novu klasu iz osnovne Thread klase
class MatrixRowThread : public Thread {
private:
    int* row;
    int cols;
    int* rowSum;
    Semaphore* doneSem;

public:
    // Konstruktor klase pakuje potrebne parametre
    MatrixRowThread(int* r, int c, int* rs, Semaphore* sem) : Thread() {
        this->row = r;
        this->cols = c;
        this->rowSum = rs;
        this->doneSem = sem;
    }

protected:
    // 2. Preklapamo run() metodu - ovo je telo koje će nit izvršavati
    void run() override {
        int sum = 0;
        for (int i = 0; i < cols; i++) {
            sum += row[i];
        }
        *rowSum = sum;

        // Signaliziramo glavnoj niti da smo završili sabiranje reda
        doneSem->signal();
    }
};

void makeMatrix() {
    int matrix[ROWS][COLS] = {
            {1, 1, 1, 1},
            {1, 1, 1, 1},
            {1, 1, 1, 5},
            {1, 1, 1, 5},
            {1, 1, 1, 1}
    };

    int rowSums[ROWS];
    MatrixRowThread* threads[ROWS];

    // Inicijalizujemo JEDAN semafor na 0.
    // On će služiti da glavna nit sačeka da sve radničke niti završe.
    Semaphore* doneSem = new Semaphore(0);

    // Kreiranje i pokretanje niti
    for (int i = 0; i < ROWS; i++) {
        // Prosleđujemo red, broj kolona, adresu gde upisuje sumu i pokazivač na semafor
        threads[i] = new MatrixRowThread(matrix[i], COLS, &rowSums[i], doneSem);
        threads[i]->start();
    }

    // Glavna nit čeka ROWS puta (za svaku pokrenutu nit po jednom)
    for (int i = 0; i < ROWS; i++) {
        doneSem->wait();
    }

    // Konačno sabiranje sada bezbedno može da se obavi jer su sve niti sigurno završile
    int totalSum = 0;
    for (int i = 0; i < ROWS; i++) {
        totalSum += rowSums[i];
        delete threads[i]; // Čišćenje memorije
    }

    delete doneSem; // Ne zaboravite da obrišete i semafor!

    printString("Ukupna suma matrice je: ");
    printInt(totalSum);
    printString("\n");
}