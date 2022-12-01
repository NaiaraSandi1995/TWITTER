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

setup_twitter_oauth('IS2keowO341Sy1td2Fz9bP5eB', 
                    'wFWKkJeQLyMRY4iSBUoLhtvueTjna9D2c5KP391uB29fSQTg52',
'1299356690995990528-EotwrCuXPVgllenNevZniu8TTKn79S', 
'MsdKndHxFDNXDOZbx2xabDXxtTnLiKZzB0m32Tmc3jR84')

#DIGITAR 1 APOS MENSAGEM A SEGUIR:
#[1] "Using direct authentication"
# 1
1

#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 

tweets <- userTimeline('@CONTAPESQUISADA', 
                       includeRts=TRUE, excludeReplies=FALSE, n=10000)

tweets <- userTimeline('@MarinaSilva', 
                       includeRts=TRUE, excludeReplies=FALSE, n=10000)



# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF

resign.df <- twListToDF(tweets)

# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL

write.xlsx(resign.df, "D:/......../SeqNomeArquivo.xlsx")


write.xlsx(resign.df, 
      "C:/Users/Cliente/Documents/1 DOUTORADO UFPR/2. DISCIPLINAS/4º SEMESTRE/CPOP/twitter/Marinatentativa.xlsx")


# COMANDO PARA VISUALIZAR A TABELA

View(resign.df)



#COMANDO PARA BUSCAR TRENDS POR ?REA WOEID)

trendsCuritiba <- getTrends(woeid = 455822)



#BUSCAR REDES DE SEGUIDORES NO TWEETER

Marina <- getUser("@MarinaSilva")

seguidoresMarina <- Marina$getFollowers()

sink("Marina.xlsx") 

#USAR TWLISTODF PARA TRANSFORMAR OBJETO EM TABELA DE EXCEL

Marina.df <- twListToDF(seguidoresMarina)
  

write.xlsx(Marina.df, "d:/......./Tweet_Marina.xlsx")




###################Minha raspagem

###G1


#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 

tweets <- userTimeline('@CONTAPESQUISADA', 
                       includeRts=TRUE, excludeReplies=FALSE, n=10000)

tweetsg1 <- userTimeline('@g1parana', 
                         includeRts=TRUE, excludeReplies=FALSE, n=10000)



# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF

resign.df <- twListToDF(tweetsg1)

# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL

write.xlsx(resign.df, "D:/......../SeqNomeArquivo.xlsx")


write.xlsx(resign.df, 
           "C:/Users/Cliente/Documents/1 DOUTORADO UFPR/2. DISCIPLINAS/4º SEMESTRE/CPOP/twitter/G1.xlsx")


# COMANDO PARA VISUALIZAR A TABELA

View(resign.df)


##@paranaportal


#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 

tweets <- userTimeline('@CONTAPESQUISADA', 
                       includeRts=TRUE, excludeReplies=FALSE, n=10000)

tweetsparana <- userTimeline('@paranaportal', 
                             includeRts=TRUE, excludeReplies=FALSE, n=10000)



# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF

resign1.df <- twListToDF(tweetsparana)

# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL

write.xlsx(resign.df, "D:/......../SeqNomeArquivo.xlsx")


write.xlsx(resign1.df, 
           "C:/Users/Cliente/Documents/1 DOUTORADO UFPR/2. DISCIPLINAS/4º SEMESTRE/CPOP/twitter/parana.xlsx")


# COMANDO PARA VISUALIZAR A TABELA

View(resign1.df)


##### Para Gaby

#@generonumero

#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 

tweets <- userTimeline('@CONTAPESQUISADA', 
                       includeRts=TRUE, excludeReplies=FALSE, n=10000)

tweetsgenero <- userTimeline('@generonumero', 
                             includeRts=TRUE, excludeReplies=FALSE, n=10000)



# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF

resign2.df <- twListToDF(tweetsgenero)

# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL

write.xlsx(resign.df, "D:/......../SeqNomeArquivo.xlsx")


write.xlsx(resign2.df, 
           "C:/Users/Cliente/Documents/1 DOUTORADO UFPR/2. DISCIPLINAS/4º SEMESTRE/CPOP/twitter/genero.xlsx")


# COMANDO PARA VISUALIZAR A TABELA

View(resign2.df)



#@generonumero

#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 

tweets <- userTimeline('@CONTAPESQUISADA', includeRts=TRUE, excludeReplies=FALSE, n=10000)

tweetsgenero <- userTimeline('@generonumero', includeRts=TRUE, excludeReplies=FALSE, n=10000)



# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF

resign2.df <- twListToDF(tweetsgenero)

# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL

write.xlsx(resign.df, "D:/......../SeqNomeArquivo.xlsx")


write.xlsx(resign2.df, 
           "C:/Users/Cliente/Documents/1 DOUTORADO UFPR/2. DISCIPLINAS/4º SEMESTRE/CPOP/twitter/genero.xlsx")


# COMANDO PARA VISUALIZAR A TABELA

View(resign2.df)

#####


#@DrJoaoNovo

#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 

DrJoaoNovo <- userTimeline('@DrJoaoNovo', includeRts=TRUE, excludeReplies=FALSE, n=10000)


# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF

resign.df<- twListToDF(DrJoaoNovo)

install_formats()

# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺

write.xlsx(resign.df,"C:/Users/Cliente/Documents/twitter/DrJoaoNovo.xlsx")

rio::export(NOMEDOBANDODOSTWEETS, "twets.xlsx")

install_formats()
rio::export(resign.df, "DrJoaoNovo.xlxs")


#USAR TWLISTODF PARA TRANSFORMAR OBJETO EM TABELA DE EXCEL

resign.df<-twListToDF(DrJoaoNovo.xlsx)

write.xlsx(Camila.df, "d:/......./.xlsx")

rio::export(resign.df,'DrJoaoNovo.xlsx')

# COMANDO PARA VISUALIZAR A TABELA

View(resign.df)

getwd()


#@mabel_canto
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
mabel_canto <- userTimeline('@mabel_canto', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign1.df<- twListToDF(mabel_canto)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign1.df,"C:/Users/Cliente/Documents/twitter/mabel_canto.xlsx")


#@valdirpignata
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
valdirpignata <- userTimeline('@valdirpignata', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign2.df<- twListToDF(valdirpignata)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign2.df,"C:/Users/Cliente/Documents/twitter/valdirpignata.xlsx")

#@RafaelGreca_
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
RafaelGreca_ <- userTimeline('@RafaelGreca_', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign3.df<- twListToDF(RafaelGreca_)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign3.df,"C:/Users/Cliente/Documents/twitter/RafaelGreca_.xlsx")

#@lafayetteandrad
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
lafayetteandrad <- userTimeline('@lafayetteandrad', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign4.df<- twListToDF(lafayetteandrad)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign4.df,"C:/Users/Cliente/Documents/twitter/lafayetteandrad.xlsx")

#@Marcelo_SeS51
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
Marcelo_SeS51 <- userTimeline('@Marcelo_SeS51', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign5.df<- twListToDF(Marcelo_SeS51)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign5.df,"C:/Users/Cliente/Documents/twitter/Marcelo_SeS51.xlsx")

#@mazinhoanjos ---
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
mazinhoanjos <- userTimeline('@mazinhoanjos', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign6.df<- twListToDF(mazinhoanjos)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign6.df,"C:/Users/Cliente/Documents/twitter/mazinhoanjos.xlsx")

#@dagobertopdt
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
dagobertopdt <- userTimeline('@dagobertopdt', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign7.df<- twListToDF(dagobertopdts)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign7.df,"C:/Users/Cliente/Documents/twitter/dagobertopdts.xlsx")


#@PauloMatosCG
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
PauloMatosCG <- userTimeline('@PauloMatosCG', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign8.df<- twListToDF(PauloMatosCG)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign8.df,"C:/Users/Cliente/Documents/twitter/PauloMatosCG.xlsx")

#@DepRodrigo_
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
DepRodrigo_ <- userTimeline('@DepRodrigo_', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign9.df<- twListToDF(DepRodrigo_)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign9.df,"C:/Users/Cliente/Documents/twitter/DepRodrigo_.xlsx")

#@Heliooliveirarn
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
Heliooliveirarn <- userTimeline('@Heliooliveirarn', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign10.df<- twListToDF(Heliooliveirarn)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign10.df,"C:/Users/Cliente/Documents/twitter/Heliooliveirarn.xlsx")

#@JoaoCampos
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
JoaoCampos <- userTimeline('@JoaoCampos', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign11.df<- twListToDF(JoaoCampos)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign11.df,"C:/Users/Cliente/Documents/twitter/JoaoCampos.xlsx")

#@anisiomaiapt
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
anisiomaiapt <- userTimeline('@anisiomaiapt', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign12.df<- twListToDF(anisiomaiapt)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign12.df,"C:/Users/Cliente/Documents/twitter/anisiomaiapt.xlsx")

#@nilvanferreira
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
nilvanferreira <- userTimeline('@nilvanferreira', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign13.df<- twListToDF(nilvanferreira)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign13.df,"C:/Users/Cliente/Documents/twitter/nilvanferreira.xlsx")

#@ruycarneiropb
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
ruycarneiropb<- userTimeline('@ruycarneiropb', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign14.df<- twListToDF(ruycarneiropb)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign14.df,"C:/Users/Cliente/Documents/twitter/ruycarneiropb.xlsx")

#@VIRGULINOLAMPI2
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
VIRGULINOLAMPI2<- userTimeline('@VIRGULINOLAMPI2', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign15.df<- twListToDF(VIRGULINOLAMPI2)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign15.df,"C:/Users/Cliente/Documents/twitter/VIRGULINOLAMPI2.xlsx")

#@capalbertoneto
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
capalbertoneto<- userTimeline('@capalbertoneto', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign16.df<- twListToDF(capalbertoneto)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign16.df,"C:/Users/Cliente/Documents/twitter/capalbertoneto.xlsx")

#@thiagoprefeito
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
thiagoprefeito <- userTimeline('@thiagoprefeito', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign17.df<- twListToDF(thiagoprefeito)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign17.df,"C:/Users/Cliente/Documents/twitter/thiagoprefeito.xlsx")

#@chaves_hildon
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
chaves_hildon <- userTimeline('@chaves_hildon', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign18.df<- twListToDF(chaves_hildon)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign18.df,"C:/Users/Cliente/Documents/twitter/chaves_hildon.xlsx")

#@Garcon43
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
Garcon43 <- userTimeline('@Garcon43', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign19.df<- twListToDF(Garcon43)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign19.df,"C:/Users/Cliente/Documents/twitter/Garcon43.xlsx")

#@elidiasborges
#COMANDO PARA CONSULTA SIMPLES DE TWEETS. 
elidiasborges <- userTimeline('@elidiasborges', includeRts=TRUE, excludeReplies=FALSE, n=10000)
# COMANDO PARA TRANSFORMAR AQUIVO DO TWITTER EM .DF
resign20.df<- twListToDF(elidiasborges)
# COMANDO PARA TRANSFORMAR ARQUIVO EM PLANILHA DE EXCEL☺
write.xlsx(resign20.df,"C:/Users/Cliente/Documents/twitter/elidiasborges.xlsx")
