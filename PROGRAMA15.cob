       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: VENDA DE PRODUTOS COM ACUMULADO
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
       77  WRK-PRODUTO         PIC X(30)    VALUE SPACES.
       77  WRK-VALOR           PIC 9(05)V99 VALUE ZEROS.
       77  WRK-VEND-ACUM       PIC 9(06)V99 VALUE ZEROS.
       77  WRK-PROD-ACUM       PIC 9(03)    VALUE ZEROS.


       PROCEDURE DIVISION.
       0001-PRINCIPAL                    SECTION.
               PERFORM 0100-INICIALIZAR.
               PERFORM 0200-PROCESSAR UNTIL WRK-VALOR EQUAL 99999.
               PERFORM 0300-FINALIZAR.

             STOP RUN.

       0100-INICIALIZAR                   SECTION.
            DISPLAY "---------------------------"
            DISPLAY "DIGITE O PRODUTO "
              ACCEPT WRK-PRODUTO
            DISPLAY "DIGITE O VALOR "
              ACCEPT WRK-VALOR.


       0200-PROCESSAR                  SECTION.
            COMPUTE WRK-VEND-ACUM = WRK-VEND-ACUM + WRK-VALOR
              ADD 1 TO WRK-PROD-ACUM.
                PERFORM 0100-INICIALIZAR.


       0300-FINALIZAR                SECTION.
           DISPLAY "========================="
           DISPLAY "TOTAL DE VENDAS " WRK-VEND-ACUM
           DISPLAY "TOTAL DE PRODUTOS " WRK-PROD-ACUM.
