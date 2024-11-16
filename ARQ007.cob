
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ007.
      *=================================================================
      *==  AUTOR: JHONATA VINICIUS
      *==  CONSULTORIA: XPTO
      *==  DATA DE CRIAÇAO: 26/10/2024
      *==  OBJETIVO: GRAVACAO DE REGISTROS DO ARQUIVO CLIENTES.DAT
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
       77  FS-CLIENTES  PIC 9(02) VALUE ZEROS.
       77  WRK-MSG-ERRO PIC X(35) VALUE SPACES.


      *-------------------- VARIAVEIS DE ENTRADA DE DADOS --------------
       77  WRK-ID      PIC 9(04) VALUE ZEROS.
       77  WRK-NOME    PIC X(20) VALUE SPACES.
       77  WRK-TEL     PIC X(11) VALUE SPACES.

       PROCEDURE DIVISION.
       0000-PRINCIPAL                  SECTION.
               PERFORM 0100-INICIALIZAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-FINALIZAR.
                 STOP RUN.
       0100-INICIALIZAR                SECTION.
           OPEN EXTEND CLIENTES .

           IF FS-CLIENTES EQUAL 35
             MOVE "ARQUIVO NAO FOI ABERTO CORRETAMENTE" TO WRK-MSG-ERRO
             PERFORM 9000-TRATA-ERRO
           END-IF.
                   PERFORM 0110-RECEBER-DADOS.

       0110-RECEBER-DADOS              SECTION.
           DISPLAY "DIGITE O ID........ "
             ACCEPT WRK-ID.
           DISPLAY "DIGITE O NOME...... "
             ACCEPT WRK-NOME.
           DISPLAY "DIGITE O TELEFONE.. "
             ACCEPT WRK-TEL

           DISPLAY "STATUS " FS-CLIENTES.
       0200-PROCESSAR                  SECTION.

                 MOVE WRK-ID                    TO REG-ID.
                 MOVE WRK-NOME                  TO REG-NOME.
                 MOVE WRK-TEL                   TO REG-TEL.

                 WRITE REG-CLIENTES.
                 0300-FINALIZAR                  SECTION.
               DISPLAY "FIM DE PROGRAMA ".
               CLOSE CLIENTES.

       9000-TRATA-ERRO.
             DISPLAY WRK-MSG-ERRO.
              GOBACK.
