#include "../h/syscall_c.h"

void putGetTest(){
    putc('U');
    putc('N');
    putc('E');
    putc('S');
    putc('I');
    char c = getc();
    getc();
    putc(c);
    putc('U');
    putc('N');
    putc('E');
    putc('S');
    putc('I');
    c = getc();
    getc();
    // 3. Kada korisnik nesto ukuca, odstampaćemo to nazad
    putc(c);
    putc('\n');
}

void justGo(){
    while(true){
        putc('L');
    }
}