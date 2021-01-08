// HolyC allows ASM to be implemented with HolyC
//
// NOTE '&' = import
//   IMPORT PUT_STR

asm {
    MSG1:
        DU8 "Testing\n",0;
    MSG2:
        DU8 "This is crazy\n\0";
    ASMTEST1::
        PUSH    RSI
        MOV     RSI, MSG1
        CALL    &PUT_STR
        POP     RSI
        RET
    ASMTEST2::
        PUSH    RSI
        MOV     RSI, MSG2
        CALL    &PUT_STR
        POP     RSI
        RET
    _ASMTEST3::
        ENTER   0
        PUSH    RSI
        MOV     RSI,SF_ARG1[RBP]
        CALL    &PUT_STR
        POP     RSI
        LEAVE
        RET1    8
}

_extern _ASMTEST3 U0 AsmTest3(U8 *st);   //bind ASM function to HolyC function, _ is required

Call(ASMTEST1);
Call(ASMTEST2);

AsmTest3("Wtf is this\n");
