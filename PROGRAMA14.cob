       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: IMPRIMIR TABUADA 1 AO 10
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
       77  WRK-NUM  PIC 9(02)  VALUE ZEROS.
       77  WRK-CONT PIC S9(02)  VALUE 1.
       77  WRK-RES  PIC 9(03)  VALUE ZEROS.

       PROCEDURE DIVISION.


       0100-INICIALIZAR              SECTION.
            DISPLAY "QUAL NUMERO..."
              ACCEPT WRK-NUM.


       0200-PROCESSAR                SECTION.
      *======================= UNTIL ================================
      *      PERFORM UNTIL WRK-CONT GREATER 10
      *        COMPUTE WRK-RES = WRK-NUM * WRK-CONT
      *        DISPLAY WRK-NUM " X " WRK-CONT " = " WRK-RES
      *         ADD 1 TO WRK-CONT
      *      END-PERFORM.
      *======================= TIMES ================================
      *       PERFORM UNTIL WRK-CONT GREATER 10
      *         COMPUTE WRK-RES = WRK-NUM * WRK-CONT
      *         DISPLAY WRK-NUM " X " WRK-CONT " = " WRK-RES
      *           ADD 1 TO WRK-CONT
      *       END-PERFORM.
      *======================= VARYING ================================
             PERFORM VARYING WRK-CONT FROM 50 BY 1
                       UNTIL WRK-CONT GREATER 10
                COMPUTE WRK-RES = WRK-NUM * WRK-CONT
                DISPLAY WRK-NUM " X " WRK-CONT " = " WRK-RES

             END-PERFORM.

       0300-FINALIZAR                SECTION.
            STOP RUN.
