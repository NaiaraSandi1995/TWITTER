#PESQUISA TWITTER NAS CAMPANHAS 2020

#INSTALAR OS SEGUINTES PACOTES

install.packages("ROAuth")
install.packages("twitteR")
install.packages("xlsx")
install.packages("openxlsx")

#CARREGAR OS PACOTES

library("ROAuth")
library("twitteR")
library("openxlsx")


#COPIAR OS C?DIGOS NO API DO TWITTER. P?GINA DE DESENVOLVEDOR
#endere?o da p?gina https://developer.twitter.com/en/apps

#PASSO 1 - RODAR OS QUATRO CODIGOS DA PAGINA ACIMA.
#EM KEYS AND TOKENS SAO:
#- API KEY
#- API SECRET KEY
#- ACCESS TOKEN
#- ACCESS TOKEN SECRET

setup_twitter_oauth('APIKEY', 'APISECRETKEY', 
                    'ACCESSTOKEN', 'ACCESSTOKENSECRET')

#DIGITAR 1 APOS MENSAGEM A SEGUIR:
#[1] "Using direct authentication"
# 1


#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 

tweets<-userTimeline('@CONTAPESQUISADA', 
                     includeRts=TRUE, excludeReplies=FALSE, n=10000)


# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF

resign.df<-twListToDF(tweets)

# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL

write.xlsx(resign.df, "D:/......../SeqNomeArquivo.xlsx")


# COMANDO PARA VISUALIZAR A TABELA

View(resign24.df)

#COMANDO PARA BUSCAR TRENDS POR ?REA WOEID)

trendsCuritiba <- getTrends(woeid = 455822)



#BUSCAR REDES DE SEGUIDORES NO TWEETER

Marina<-getUser("MarinaSilva")

seguidoresMarina <- Marina$getFollowers()

sink("Marina.xlsx") 

#USAR TWLISTODF PARA TRANSFORMAR OBJETO EM TABELA DE EXCEL

Marina.df<-twListToDF(seguidoresMarina)

write.xlsx(Marina.df, "d:/......./Tweet_Marina.xlsx")

