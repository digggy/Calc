CLS
SCREEN 12
OPEN "add.txt" FOR APPEND AS #1
w$ = "y"
DO WHILE w$ = "y"
CLS
    LOCATE 3, 9
    PRINT "ADD A BOOK ?????"
    LOCATE 5, 9
    PRINT "INPUT THE FOLLOWING INFORMATION"
     LINE (10, 10)-(565, 455), 15, B
     LINE (10, 10)-(20, 455), 4, BF
     LINE (555, 10)-(565, 455), 4, BF
     LINE (430, 100)-(550, 250), 15, B
     LOCATE 8, 58
     PRINT "ADD A BOOK"
     LINE (420, 100)-(560, 250), 15, B


    LOCATE 10, 12
    INPUT "BOOK'S NAME : "; a$
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4
    LOCATE 12, 12
    INPUT "BOOK'S AUTHOR : "; B$
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4

    LOCATE 14, 12
    INPUT "BOOK'S GENRES : "; c$
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4

    LOCATE 16, 12
    INPUT "BOOK PUBLISHED DATE:"; d$
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4

    LOCATE 18, 12
    INPUT "BOOK DESCRIPTION "; e$
    SOUND 2000, .2
    SOUND 2000, .3
    SOUND 3000, .4

    f$ = "r"
    a$ = LCASE$(a$)
    B$ = LCASE$(B$)
    c$ = LCASE$(c$)
    d$ = LCASE$(d$)
    e$ = LCASE$(e$)
    WRITE #1, a$, B$, c$, d$, e$, f$
    FOR I = 1 TO 10000 * 3
        LOCATE 26, 12
        PRINT "BOOK ADDED"
    NEXT I
    LOCATE 26, 6
    INPUT "DO YOU WANT TO ADD MORE BOOKS (Y/N)"; f$
    IF f$ = "y" OR f$ = "Y" THEN
        w$ = "y"
    ELSE
        CHAIN "menu.bas"
    END IF
LOOP


