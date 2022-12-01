
##Nuvem de palavras no R

library(readxl)
RafaelGreca_ <- read_excel("RafaelGreca_.xlsx")
View(RafaelGreca_)

library(tm)
library(SnowballC)
library(wordcloud)

###Escolha da variável para ser a nuvem
RafaelGreca_$text
RafaelGreca_$favorited

#Extração da variável
subset()
BancoMenor <- subset (RafaelGreca_, 
                                  select =
                                    c(text))
save(BancoMenor, file = "BancoMenor.RData")


##Primeiro, precisamos criar um corpus:
BancoMenor1 <- Corpus(VectorSource(BancoMenor))
##Em seguida, vamos converter
#o corpus em um documento de texto simples.
BancoMenor1 <- tm_map(BancoMenor1, PlainTextDocument)

#Então, vamos remover toda a pontuação e palavras irrelevantes. 
#Stopwords são comumente usadas no português, como:  eu, meu e etc.
BancoMenor1 <- tm_map(BancoMenor1, removePunctuation) 
BancoMenor1 <- tm_map(BancoMenor1, removeWords, stopwords('pt')) 

#Em seguida iremos verificar as palavras e seus sinônimos 
#(Ex: Aprendizagem -> aprender, caminhou -> caminhada, etc.). 
#Isto irá garantir que as diferentes formas da palavra em 
#questão serão convertidos para a mesma forma e 
#plotadas apenas uma vez no wordcloud.
BancoMenor1 <- tm_map(BancoMenor1, stemDocument)

#Agora, criamos a wordcloud
wordcloud(BancoMenor1, max.words = 50)

Obj1 <- wordcloud (BancoMenor1, 
                      max.words=50,colors=c("#FEC872",
                                            "#72FEA7",
                                            "#45E65C",
                                            "#C8FF49",
                                            "#4A8AFF"))

wordcloud (BancoMenor1, 
           max.words=50, random.order = FALSE,
           rot.per = 0.35,
           colors = brewer.pal(8,'Dark2'),
           backgroundColor = "darkcyan")




           