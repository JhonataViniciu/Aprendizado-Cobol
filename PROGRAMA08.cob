       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: EXEMPLO DE OPERACO SOMA (SUBTRACT, MULTIPLY,
      *== DATA: XX/XX/20XX                   DIVIDE)
      *== OBSERVAÇÕES:
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
       77  WRK-NUM1            PIC 9(04) VALUE ZEROS.
       77  WRK-NUM2            PIC 9(04) VALUE ZEROS.
       77  WRK-RES             PIC S9(09)V99 VALUE ZEROS.
       77  WRK-RES-ED          PIC ZZ.ZZZ.ZZ9,99 VALUE ZEROS.


       PROCEDURE DIVISION.


       0100-RECEBE                   SECTION.
           DISPLAY "DIGITE O PRIMEIRO NUMERO "
             ACCEPT WRK-NUM1
           DISPLAY "DIGITE O SEGUNDO NUMERO "
             ACCEPT WRK-NUM2.
       0150-PROCESSA                   SECTION.
      *--------------------------ADD------------------------------
      *(TO) PARA ACRESCENTAR          ADD WRK-NUM1 WRK-NUM2 TO WRK-RES.
      *(GIVING)PARA INICIALIZAR OU ZERAR ADD 1   GIVING WRK-RES.
      *--------------------------ADD-------------------------------

      *--------------------------MULTIPLY------------------------------
      *         MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RES.

      *--------------------------SUBTRACT------------------------------
      *         SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RES.

      *--------------------------DIVIDE------------------------------
      *         DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RES
      *                 ON SIZE ERROR
      *                      DISPLAY "ERRO - DIVISAO POR 0".

      *--------------------------COMPUTE------------------------------
      *          ADD WRK-NUM1 WRK-NUM2 GIVING WRK-RES
      *          DIVIDE WRK-RES BY 2 GIVING WRK-RES.
               COMPUTE WRK-RES = (WRK-NUM1 + WRK-NUM2) / 2.


       0200-MOSTRA                   SECTION.
      *         MOVE WRK-RES TO WRK-RES-ED.
           DISPLAY "RESULTADO " WRK-RES.


       0300-FINALIZAR                SECTION.
            STOP RUN.
