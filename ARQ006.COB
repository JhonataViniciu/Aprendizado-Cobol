       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ006.
      *=================================================================
      *==  AUTOR: JHONATA VINICIUS
      *==  CONSULTORIA: XPTO
      *==  DATA DE CRIAÇAO: 26/10/2024
      *==  OBJETIVO: LEITURA DE TODOS REGISTROS ARQUIVO XXCLIENTES.DAT
      *=================================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO "C:/COBOL/DADOS/XXCLIENTES.DAT.txt"
               FILE STATUS IS FS-CLIENTES.

       DATA DIVISION.
       FILE SECTION.
       FD  CLIENTES.
       01  REG-CLIENTES.
           05 REG-ID   PIC 9(04).
           05 REG-NOME PIC X(20).
           05 REG-TEL  PIC X(11).
       WORKING-STORAGE SECTION.
      *---------------------- ACUMULADORES ---------------------

       77  WRK-ACUM-LIDOS          PIC 9(04) VALUE ZEROS.
       77  WRK-ACUM-ACH      PIC 9(04) VALUE ZEROS.

      *---------------------------------------------------------

       77  WRK-ID   PIC 9(04).

       77  FS-CLIENTES  PIC 9(02) VALUE ZEROS.
       77  WRK-MSG-ERRO PIC X(35) VALUE SPACES.

       PROCEDURE DIVISION.
       0000-PRINCIPAL                  SECTION.
               PERFORM 0100-INICIALIZAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-FINALIZAR.

                 STOP RUN.
       0100-INICIALIZAR                SECTION.
           OPEN INPUT CLIENTES .

           IF FS-CLIENTES EQUAL 35
             MOVE "ARQUIVO NAO FOI ABERTO CORRETAMENTE" TO WRK-MSG-ERRO
             PERFORM 9000-TRATA-ERRO
           END-IF.
             DISPLAY "DIGITE O ID... "
               ACCEPT WRK-ID.

           DISPLAY "STATUS " FS-CLIENTES.
       0200-PROCESSAR                  SECTION.
               READ CLIENTES

                IF FS-CLIENTES EQUAL 0
                   PERFORM UNTIL FS-CLIENTES NOT EQUAL 00
                       ADD 1 TO WRK-ACUM-LIDOS
                       IF REG-ID EQUAL WRK-ID

                         DISPLAY "ID......... " REG-ID
                         DISPLAY "NOME....... " REG-NOME
                         DISPLAY "TELEFONE... " REG-TEL
                         DISPLAY "--------------------------------"
                         ADD 1 TO WRK-ACUM-ACH
                       END-IF
                       READ CLIENTES
                   END-PERFORM
                ELSE
                   DISPLAY "ARQUIVO VAZIO"
                END-IF.


       0300-FINALIZAR                  SECTION.
               CLOSE CLIENTES.
               PERFORM 0310-ESTATISTICA.
               DISPLAY "FIM DE PROGRAMA ".


       0310-ESTATISTICA                SECTION.
             DISPLAY "==================="
             DISPLAY "REGISTROS LIDOS: " WRK-ACUM-LIDOS.
             DISPLAY "REGISTROS ACHADOS: " WRK-ACUM-ACH.
       9000-TRATA-ERRO.
             DISPLAY WRK-MSG-ERRO.
              GOBACK.
