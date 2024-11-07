       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: VARIAVEL ESTRUTURAL (GRUPO)
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
       01  WRK-DADOS.
           05 WRK-NUM1         PIC 9(03) VALUE ZEROS.
           05 WRK-NUM2         PIC 9(03) VALUE ZEROS.

       77 WRK-RES         PIC 9(03) VALUE ZEROS.


       PROCEDURE DIVISION.


       0100-RECEBE                   SECTION.
             ACCEPT WRK-DADOS.
              COMPUTE WRK-RES = WRK-NUM1 + WRK-NUM2.


       0200-MOSTRA                   SECTION.
           DISPLAY "RESULTADO... " WRK-RES.


       0300-FINALIZAR                SECTION.
            STOP RUN.
