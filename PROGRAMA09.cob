       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: TESTAR MEDIA DO ALUNO
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
      *=======================================================
XP01  *== ALTERAÇÕES
      *== DATA: 18/10/24
      *== REMONTEI A LOGICA DOS APROVADOS
XP01  *== AUTOR: JHONATA                 EMPRESA: XPTO
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
      *==================== VARIAVEIS DE APOIO =============
XP01   77  WRK-NIVEL   PIC X(10)   VALUE SPACES.
       77  WRK-NOTA1   PIC 9(02)V99 VALUE ZEROS.
       77  WRK-NOTA2   PIC 9(02)V99 VALUE ZEROS.
       77  WRK-MEDIA   PIC 9(02)V99 VALUE ZEROS.


       PROCEDURE DIVISION.


       0100-RECEBE                   SECTION.
XP01         DISPLAY "NIVEL (FUND / MEDIO )"
XP01           ACCEPT WRK-NIVEL.
             DISPLAY "NOTA 1 "
               ACCEPT WRK-NOTA1
             DISPLAY "NOTA 2 "
               ACCEPT WRK-NOTA2.

       0150-PROCESSA                 SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.


       0200-MOSTRA                   SECTION.
             DISPLAY "MEDIA... " WRK-MEDIA.
XP01          IF WRK-NIVEL(01:04) EQUAL  "FUND" AND
XP01                  WRK-MEDIA GREATER THAN OR EQUAL 6
XP01                  DISPLAY "APROVADO"
XP01          ELSE
XP01                  DISPLAY "REPROVADO"
XP01          END-IF.
XP01          IF WRK-NIVEL(01:05) EQUAL  "MEDIO" AND
XP01                  WRK-MEDIA GREATER THAN OR EQUAL 7
XP01                  DISPLAY "APROVADO"
XP01          ELSE
XP01                  DISPLAY "REPROVADO"
XP01          END-IF.

       0300-FINALIZAR                SECTION.
            STOP RUN.
