# Definindo o caminho onde estar� o arquivo com os dados:

setwd("C:/Users/BRUNO/Google Drive/Estudos/PowerBI/Capitulo12")

# Conferir o caminho do diret�rio dos arquivos:

getwd()

# Carregar o Arquivo com os dados:

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Fun��o da Vari�ncia para a vari�vel Valor:

var(vendas$Valor)

# Fun��o do Desvio Padr�o para a vari�ve� Valor:

sd(vendas$Valor)