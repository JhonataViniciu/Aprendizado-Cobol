       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
      *=======================================================
      *== AUTOR: JHONATA                 EMPRESA:XPTO
      *== OBJETIVO: TESTAR MEDIA DO ALUNO
      *== DATA: XX/XX/20XX
      *== OBSERVAÇÕES:
       ENVIRONMENT                   DIVISION.
       CONFIGURATION                 SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE               SECTION.
      *==================== VARIAVEIS DE APOIO =============

       77  WRK-PRODUTO PIC X(30)   VALUE SPACES.
       77  WRK-ESTADO  PIC X(02)   VALUE SPACES.
       77  WRK-VALOR   PIC 9(08)99 VALUE ZEROS.
       77  WRK-FRETE   PIC 9(08)99 VALUE ZEROS.

      *==================== VARIAVEIS DE EDIÇÃO =============
       77  WRK-VALOR-ED   PIC ZZ.ZZZ.ZZ9,99.
       77  WRK-FRETE-ED   PIC ZZ.ZZZ.ZZ9,99.

       PROCEDURE DIVISION.


       0100-RECEBE                   SECTION.
             DISPLAY "PRODUTO "
               ACCEPT WRK-PRODUTO
             DISPLAY "VALOR "
               ACCEPT WRK-VALOR.
             DISPLAY "ESTADO (SP/RJ/ES)"
               ACCEPT WRK-ESTADO.

       0150-PROCESSA                 SECTION.
           IF WRK-ESTADO EQUAL "SP"
                COMPUTE WRK-FRETE = WRK-VALOR * 0,10
           END-IF.

           IF WRK-ESTADO EQUAL "RJ"
                COMPUTE WRK-FRETE = WRK-VALOR * 0,15
           END-IF.

           IF WRK-ESTADO EQUAL "ES"
                COMPUTE WRK-FRETE = WRK-VALOR * 0,20
           END-IF.


                COMPUTE WRK-VALOR = WRK-VALOR + WRK-FRETE.
                MOVE WRK-VALOR  TO  WRK-VALOR-ED.
                MOVE WRK-FRETE  TO  WRK-FRETE-ED.

       0200-MOSTRA                   SECTION.
             DISPLAY "VALOR FINAL " WRK-VALOR-ED.
           IF WRK-FRETE GREATER 0
             DISPLAY "FRETE       " WRK-FRETE-ED
           ELSE
             DISPLAY "NAO ENTREGAMOS NESTE ESTADO"
           END-IF.
       0300-FINALIZAR                SECTION.
            STOP RUN.
