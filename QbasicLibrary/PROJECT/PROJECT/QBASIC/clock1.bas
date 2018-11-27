SCREEN 12
DEFINT A-Z
DIM t AS STRING, pie AS SINGLE, r AS SINGLE
DIM x AS SINGLE, y AS SINGLE
DIM x1 AS SINGLE, y1 AS SINGLE
pie = 3.1415926#
SCREEN 7, , 2, 0
CIRCLE (160, 100), 90, , , , 2
CIRCLE (160, 100), 92, , , , 3
CIRCLE (160, 100), 5, , , , 45
FOR i = 0 TO 60
    x = COS(i * pie / 30) * 85
    y = SIN(i * pie / 30) * 85
    ass = i MOD 5 = 0
    x1 = x * (.95 + ass * .1)
    y1 = y * (.95 + ass * .1)
    LINE (x + 160, y + 100)-(x1 + 160, y1 + 100)
NEXT
SCREEN 7, , 1, 0
DO
    PCOPY 2, 1
    t$ = TIME$
    s = VAL(RIGHT$(t, 2))
    m = VAL(MID$(t, 4, 2))
    h = VAL(LEFT$(t, 2))
    IF o <> s THEN
        o = s
        r = (s - 15) * pie / 30
    ELSE
        r = r + .01
        a! = TIMER
        1 IF TIMER < (a! + .1) THEN 1
    END IF
    x = COS(r) * 80
    y = SIN(r) * 80
    LINE (160, 100)-(x + 160, y + 100), 4
    x = COS((m * 2 + s / 30 - 30) * pie / 60) * 65
    y = SIN((m * 2 + s / 30 - 30) * pie / 60) * 65
    LINE (160, 100)-(x + 160, y + 100)
    x = COS((h * 10 + m * 4 / 30 - 30) * pie / 60) * 45
    y = SIN((h * 10 + m * 4 / 30 - 30) * pie / 60) * 45
    LINE (160, 100)-(x + 160, y + 100)
    'LOCATE 1, 1
    'PRINT TIME$
    PCOPY 1, 0
LOOP UNTIL INP(&H60) = 1
SYSTEM

