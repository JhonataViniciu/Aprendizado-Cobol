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
      *== DESENVOLVENDO PERFORM
XP01  *== AUTOR: JHONATA                 EMPRESA: XPTO
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
      *==================== VARIAVEIS DE APOIO =============
       77  WRK-NIVEL   PIC X(10)   VALUE SPACES.
       77  WRK-NOTA1   PIC 9(02)V99 VALUE ZEROS.
       77  WRK-NOTA2   PIC 9(02)V99 VALUE ZEROS.
       77  WRK-MEDIA   PIC 9(02)V99 VALUE ZEROS.


       PROCEDURE DIVISION.
       0001-PRINCIPAL                SECTION.

XP01           PERFORM 0100-INICIAR
XP01           PERFORM 0200-PROCESSAR
XP01           PERFORM 0300-FINALIZAR
XP01           STOP RUN.

       0100-INICIAR                   SECTION.
             DISPLAY "NIVEL (FUND / MEDIO )"
               ACCEPT WRK-NIVEL.
             DISPLAY "NOTA 1 "
               ACCEPT WRK-NOTA1
             DISPLAY "NOTA 2 "
               ACCEPT WRK-NOTA2.

       0200-PROCESSAR                 SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

             DISPLAY "A MEDIA... " WRK-MEDIA.

             EVALUATE TRUE
               WHEN WRK-MEDIA GREATER 10
                 DISPLAY "ENTRE COM NOTAS CORRETAS"
               WHEN WRK-MEDIA GREATER 6

                 DISPLAY "APROVADO"
               WHEN OTHER
                 DISPLAY "REPROVADO"
             END-EVALUATE.

       0300-FINALIZAR                SECTION.
