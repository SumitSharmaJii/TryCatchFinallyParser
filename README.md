# Try-Catch-Finally Parser
Parser using lex and yacc to check if a try-catch-finally block syntax is valid or not.

* Brief about project -> https://github.com/SumitSharmaa/TryCatchFinallyParser/blob/master/Report.pdf


# Commands to compile and execute :-
Flex and Bison should be installed
* Step 1 :   flex tryCatch.l
* Step 2 :   bison -ydv tryCatch.y  
* Step 3 :   gcc lex.yy.c y.tab.c -o Prog
* Step 4 :   ./Prog sampleInput.txt
