
d:
k$ = INKEY$
IF k$ = "A" THEN
    I = I + 1
    SOUND I * 100, 0.01 * 100
END IF
GOTO d:


