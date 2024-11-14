       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ003.
      *=================================================================
      *==  AUTOR: JHONATA VINICIUS
      *==  CONSULTORIA: XPTO
      *==  DATA DE CRIAÇAO: 26/10/2024
      *==  OBJETIVO: LEITURA DE TODOS REGISTROS ARQUIVO CLIENTES.DAT
      *=================================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO "C:/COBOL/DADOS/XXCLIENTES.DAT.txt"
               FILE STATUS IS FS-CLIENTES.


       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01  REG-CLIENTES.
           05 REG-ID   PIC 9(04).
           05 REG-NOME PIC X(20).
           05 REG-TEL  PIC X(11).
       WORKING-STORAGE SECTION.
       01  WRK-CLIENTES.
           05 WRK-ID   PIC 9(04).
           05 WRK-NOME PIC X(20).
           05 WRK-TEL  PIC X(11).
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

           DISPLAY "STATUS " FS-CLIENTES.
       0200-PROCESSAR                  SECTION.
               READ CLIENTES

                IF FS-CLIENTES EQUAL 0
                   PERFORM UNTIL FS-CLIENTES NOT EQUAL 00
                   MOVE REG-ID   TO WRK-ID
                   MOVE REG-NOME TO WRK-NOME
                   MOVE REG-TEL  TO WRK-TEL
                     DISPLAY "ID......... " REG-ID
                     DISPLAY "NOME....... " REG-NOME
                     DISPLAY "TELEFONE... " REG-TEL
                     DISPLAY "--------------------------------"
                       READ CLIENTES
                   END-PERFORM
                ELSE
                   DISPLAY "ARQUIVO VAZIO"
                END-IF.


       0300-FINALIZAR                  SECTION.
               DISPLAY "FIM DE PROGRAMA ".
               CLOSE CLIENTES.

       9000-TRATA-ERRO.
             DISPLAY WRK-MSG-ERRO.
              GOBACK.
