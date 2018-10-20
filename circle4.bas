DIM KeyPress AS STRING
DIM x AS INTEGER
DIM y AS INTEGER

CONST Size = 1

a = 100
b = 170
c = 250
d = 130



SCREEN 12
DO

    KeyPress = UCASE$(INKEY$)

    IF KeyPress = CHR$(0) + CHR$(72) AND y < Size THEN
        CLS
        b = b - 1
        d = d - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(80) AND y < 199 - Size THEN
        CLS
        b = b + 1
        d = d + 1

    ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x < Size THEN
        CLS
        a = a - 1
        c = c - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
        CLS
        a = a + 1
        c = c + 1

    END IF
    A:
    IF KeyPress = CHR$(0) + CHR$(72) AND y < Size THEN
        CLS
        b = b - 1
        d = d - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(80) AND y < 199 - Size THEN
        CLS
        b = b + 1
        d = d + 1

    ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x < Size THEN
        CLS
        a = a - 1
        c = c - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
        CLS
        a = a + 1
        c = c + 1
    END IF

    B:
    IF KeyPress = CHR$(0) + CHR$(72) AND y < Size THEN
        CLS
        b = b - 1
        d = d - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(80) AND y < 199 - Size THEN
        CLS
        b = b + 1
        d = d + 1

    ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x < Size THEN
        CLS
        a = a - 1
        c = c - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
        CLS
        a = a + 1
        c = c + 1

    END IF

    C:
    IF KeyPress = CHR$(0) + CHR$(72) AND y < Size THEN
        CLS
        b = b - 1
        d = d - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(80) AND y < 199 - Size THEN
        CLS
        b = b + 1
        d = d + 1

    ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x < Size THEN
        CLS
        a = a - 1
        c = c - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
        CLS
        a = a + 1
        c = c + 1

    END IF


    D:
    IF KeyPress = CHR$(0) + CHR$(72) AND y < Size THEN
        CLS
        b = b - 1
        d = d - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(80) AND y < 199 - Size THEN
        CLS
        b = b + 1
        d = d + 1

    ELSEIF KeyPress = CHR$(0) + CHR$(75) AND x < Size THEN
        CLS
        a = a - 1
        c = c - 1
    ELSEIF KeyPress = CHR$(0) + CHR$(77) AND x < 319 - Size THEN
        CLS
        a = a + 1
        c = c + 1

    END IF

    LINE (a, b)-(a, d)

LOOP UNTIL KeyPress = "Q"

