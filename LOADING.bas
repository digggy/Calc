SCREEN 12
REM "-------------------------------------"
C = 9
D = 12
LINE (20, 20)-(25, 445), 6, BF
LINE (20, 20)-(585, 25), 7, BF
LINE (20, 445)-(580, 440), 8, BF
LINE (580, 20)-(615, 445), 9, BF


LINE (15, 10)-(10, 455), 1, BF
LINE (10, 10)-(590, 15), 2, BF
LINE (10, 455)-(585, 450), 4, BF
LINE (585, 15)-(590, 455), 5, BF

RANDOMIZE TIMER
LINE (95, 145)-(550, 150), 4, BF
LINE (95, 145)-(100, 200), 4, BF
LINE (95, 205)-(550, 200), 4, BF
LINE (545, 145)-(550, 200), 4, BF

FOR i = 101 TO 545
    SOUND i * 10, .1
    IF j > 6 THEN
        j = 0
        LOCATE 14, 48
        PRINT "                   "
    END IF
    LOCATE 14, 39
    PRINT "LOADING.."
    LOCATE 14, 48 + j
    PRINT "."
    j = j + 1
    IF i MOD 8 = 0 THEN
        K = K + 1
        D = D + 1
    END IF
    IF K MOD 2 = 0 THEN
        LOCATE C, D
        PRINT CHR$(1)
        LOCATE 15, D
        PRINT CHR$(2)

    ELSE
        LOCATE 15, D
        PRINT CHR$(1)
        LOCATE C, D
        PRINT CHR$(2)

    END IF
    LINE (i, 150)-(i, 200)
    A = INT(RND * 100000)
    FOR B = 1 TO A
    NEXT B
NEXT i


