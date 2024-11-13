       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA18.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: TESTAR O CONSUMO DO MODULO DATAMES
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
       ENVIRONMENT                     DIVISION.
       CONFIGURATION                   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE                 SECTION.
       77  WRK-DATA PIC X(40).
       PROCEDURE DIVISION.

       0001-PRINCIPAL                  SECTION.
               CALL "DATAMES" USING WRK-DATA.
               DISPLAY WRK-DATA.
               STOP RUN.
