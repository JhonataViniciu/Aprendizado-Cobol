
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ004.
      *=================================================================
      *==  AUTOR: JHONATA VINICIUS
      *==  CONSULTORIA: XPTO
      *==  DATA DE CRIAÇAO: 26/10/2024
      *==  OBJETIVO: GRAVACAO DE REGISTROS DONARQUIVO CLIENTES.DAT
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

       PROCEDURE DIVISION.
       0000-PRINCIPAL                  SECTION.
               PERFORM 0100-INICIALIZAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-FINALIZAR.
                 STOP RUN.
       0100-INICIALIZAR                SECTION.
           OPEN OUTPUT CLIENTES .

           IF FS-CLIENTES EQUAL 35
             MOVE "ARQUIVO NAO FOI ABERTO CORRETAMENTE" TO WRK-MSG-ERRO
             PERFORM 9000-TRATA-ERRO
           END-IF.

           DISPLAY "STATUS " FS-CLIENTES.
       0200-PROCESSAR                  SECTION.

                 MOVE 0001                   TO REG-ID.
                 MOVE 'ANA                 ' TO REG-NOME.
                 MOVE '11912345678'          TO REG-TEL.
                 WRITE REG-CLIENTES.

                 MOVE 0002                   TO REG-ID.
                 MOVE 'ANO                 ' TO REG-NOME.
                 MOVE '11912345678'          TO REG-TEL.
                 WRITE REG-CLIENTES.

                 MOVE 0003                   TO REG-ID.
                 MOVE 'ANE                 ' TO REG-NOME.
                 MOVE '11912345678'          TO REG-TEL.
                 WRITE REG-CLIENTES.
                 0300-FINALIZAR                  SECTION.
               DISPLAY "FIM DE PROGRAMA ".
               CLOSE CLIENTES.

       9000-TRATA-ERRO.
             DISPLAY WRK-MSG-ERRO.
              GOBACK.
