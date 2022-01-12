# Instalando o pacote de gr�ficos ggplot2:

install.packages("ggplot2")

# Carregando o pacote fr gr�ficos ggplot2:

library(ggplot2)

# Definindo o caminho onde estar� o arquivo com os dados:

setwd("C:/Users/BRUNO/Google Drive/Estudos/PowerBI/Capitulo12")

# Conferir o caminho do diret�rio dos arquivos:

getwd()

# Carregar o Arquivo com os dados:

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Criando um gr�fico com o gglot2 e os dados carregados:

ggplot(vendas) +
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") +
  labs(title = "M�dia de Valor por Estado")