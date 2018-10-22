// Testing functions with parameters

U0 Test1(U8 *st){
    Print(st);
}

U0 Test2(U8 *st){
    "%s", st;
}

Test1("Hello World !\n");
Test2("Hello World !!\n");

U0 Test3(U8 *st){
    "" st;
}

Test3("Hello World !!!\n");

U0 Test4(...){
    I64 i;
    for (i=0; i<argc; i++){     //argument count
        "%s", argv[i];          //argument value array
    }
}

Test4("Hello", "World\n");