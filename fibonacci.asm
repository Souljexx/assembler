MOV R0, #00H      ; Initialise R0 à 0 (F(0) = 0)
MOV R1, #01H      ; Initialise R1 à 1 (F(1) = 1)
MOV R2, #00H      ; Initialise R2 à 0 (utilisé pour stocker F(n))
MOV R3, #0CH      ; Définit le nombre d'itérations (n = 12 dans cet exemple)

LOOP:
    MOV A, #00H      ; Efface l'accumulateur (A)
    ADD A, R0        ; Ajoute \( F(n-2) \) (R0) à A
    ADD A, R1        ; Ajoute \( F(n-1) \) (R1) à A
    MOV R2, A        ; Stocke \( F(n) = F(n-1) + F(n-2) \) dans R22
    MOV A, R1        ; Charge \( F(n-1) \) (R1) dans A
    MOV R0, A        ; Met \( F(n-1) \) dans \( F(n-2) \) (R0)
    MOV A, R2        ; Charge \( F(n) \) (R2) dans A
    MOV R1, A        ; Met \( F(n) \) dans \( F(n-1) \) (R1)

    DEC R3           ; Décrémente le compteur R3
    CJNE R3, #00H, LOOP ; Continue la boucle si R3 n'est pas égal à 0
