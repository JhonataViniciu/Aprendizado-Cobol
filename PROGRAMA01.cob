       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: CONTATO COM COBOL
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.

       77  WRK-NOME                   PIC X(08)        VALUE SPACES.
       77  WRK-IDADE                  PIC 9(03)        VALUE ZEROS.
       77  WRK-SALARIO                PIC 9(08)V99     VALUE ZEROS.
       77  WRK-SALARIO-ED             PIC -ZZ.ZZ9,99   VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-RECEBE                   SECTION.
           DISPLAY "DIGITE SEU NOME "
             ACCEPT WRK-NOME.
           DISPLAY "DIGITE SUA IDADE "
             ACCEPT WRK-IDADE.
           DISPLAY "DIGITE SEU SALARIO "
             ACCEPT WRK-SALARIO.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.

       0200-MOSTRA                   SECTION.
           DISPLAY "NOME " WRK-NOME.
           DISPLAY "IDADE " WRK-IDADE.
           DISPLAY "SALARIO " WRK-SALARIO-ED.
       0300-FINALIZAR                SECTION.
            STOP RUN.
