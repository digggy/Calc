CLS
OPEN "F:\qbasics\text\add.txt" FOR INPUT AS #1
DO WHILE NOT EOF(1)
    INPUT #1, a$, b$, c$, d$, e$
    PRINT a$, b$, c$, d$
LOOP
CLOSE #1

