# Definindo o caminho onde estar� o arquivo com os dados:

setwd("C:/Users/BRUNO/Google Drive/Estudos/PowerBI/Capitulo12")

# Conferir o caminho do diret�rio dos arquivos:

getwd()

# Carregar o Arquivo com os dados:

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo de Dados:

# Primeiras Linhas:
head(vendas)

# �ltimas Linhas:
tail(vendas)

# Tabela completa:
View(vendas)

# Resumo - Medidas de Tend�ncia Central:

# �nica Vari�vel:
summary(vendas$Valor)

# M�ltiplas Vari�veis:
summary(vendas[c('Valor', 'Custo')])



# Medidas de Posi��o Relativa

# Calculo dos Quartis de uma Vari�vel:
quantile(vendas$Valor)

# Calculo de Percentis Espec�ficos de uma Vari�vel;
quantile(vendas$Valor, probs = c(0.01, 0.99))

# Calculo de uma Sequencia de Percentis de uma Vari�vel:
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))

# Calculo do Intervalo Interquartil - Q3 - Q1:
IQR(vendas$Valor)

# Retorno dos Valores M�nimo e M�ximo de uma Vari�vel:
range(vendas$Valor)

# Calculo da Diferen�a entre os Valores M�nimo e M�ximo de uma Vari�vel:
diff(range(vendas$Valor))