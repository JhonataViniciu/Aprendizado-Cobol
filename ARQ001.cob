       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQ001.
      *=================================================================
      *==  AUTOR: JHONATA VINICIUS
      *==  CONSULTORIA: XPTO
      *==  DATA DE CRIAÇAO: 26/10/2024
      *==  OBJETIVO: ABERTURA DO ARQUIVO CLIENTES.DAT
      *=================================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
             SELECT CLIENTES ASSIGN TO "C:/COBOL/DADOS/CLIENTES.DAT.txt"
               FILE STATUS IS FS-CLIENTES.


       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  FS-CLIENTES  PIC 9(02).

       PROCEDURE DIVISION.
