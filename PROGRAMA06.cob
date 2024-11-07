       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: VARIAVEL DE ESTRUTURA(GRUPO) - EXEMPLO 2
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
       01  WRK-ENTRADA.
           05 WRK-CODIGO       PIC 9(04) VALUE ZEROS.
           05 WRK-NOME         PIC X(17) VALUE SPACES.
           05 WRK-SALARIO      PIC 9(06) VALUE ZEROS.


       PROCEDURE DIVISION.


       0100-RECEBE                   SECTION.
           DISPLAY "ENTRE COM A LINHA DE DADOS "
             ACCEPT WRK-ENTRADA.


       0200-MOSTRA                   SECTION.
           DISPLAY "CODIGO... " WRK-CODIGO.
           DISPLAY "NOME..... " WRK-NOME.
           DISPLAY "SALARIO.. " WRK-SALARIO.


       0300-FINALIZAR                SECTION.
            STOP RUN.
