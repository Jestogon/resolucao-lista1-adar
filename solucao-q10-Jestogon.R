## Modificação do Exercício 7 conforme exercício 9:

#Determine a temperatura de bulbo úmido Tw
#usando a expressão empírica (Stull, 2011). 
#Salve os resultados em variáveis diferentes. 
#Determine a Tw para temperatura do ar T=30°C e Umidade relativa UR=30%.
#Defina variáveis para os valores de T e UR solicitados 
#e substitua-os na equação de Tw. 

#Temp <- 20
#UR <- 70

Temp <- 30
UR <- 30

 Tw=Temp*atan(0.151977*(UR+8.313659)^{1/2})+
   atan(Temp+UR)-
   atan(UR-1.676331)+
   (0.00391838*UR^{3/2})*atan(0.023101*UR)-
   4.686035

#Tw_20_70 <- Tw
#Tw_20_70
Tw_30_30 <- Tw
Tw_30_30

############################################################################### 
## Modificação do Exercício 8 conforme exercício 9:

#Determine os valores de umidade do solo:

#Utilizando o conjunto de equações de referência abaixo (Tomasela et al. 2003):

#Considere SI=13 (%), CL=37 (%), Db=1.3 (gcm^{−3}), Me=21 (%), 
#onde SI é a porcentagem de silte no solo, 
#CL é a porcentagem de argila, 
#Db é a densidade do solo e 
#Me é a umidade equivalente em %. 

#SI <- 16.29
#CL <- 49.25
#Db <- 1.25
#Me <- 25

SI <- 13
CL <- 37
Db <- 1.3
Me <- 21

x14 = -1.05501 + 0.0650857 * SI
x15 = -2.07588 + 0.0423954 * CL
x16 = -6.03402 + 4.8057200 * Db
x17 = -2.18409 + 8.8496300 * Me / 100
z09 = 0.175202 + 1.18513 * x17 - 0.0996042 * (x17)^{2} + 
      0.327915 * x16 - 0.0758657 * (x16)^{2}
z10 = 0.929344 * z09 + 0.132519 * x14
z11 = 0.191452 + 1.256520 * x17 - 0.079098 * (x17)^{2} + 
      0.393814 * x16 + 0.152095 * x17 *x16
z13 = 0.235084 + 0.330330 * x15 - 0.191838 * (x15)^{2} + 
      0.0543679 * (x15)^{3} + 0.977685 * x17 +
      0.304174 * x15 * x17 - 0.218857 * (x17)^{2} - 
      0.164373 * x15 * (x17)^{2} + 0.0415057 * (x17)^{3} +
      0.373361 * x16 + 0.0811861 * x17 * x16 - 0.0768087 * x15 * x17 * x16

# no potencial hídrico de 10kPa (θ_10kPa);
θ_10 = 0.339255 + 0.112526 * z10
θ_10

# na capacidade de campo (θ_33kPa);
θ_33 = 0.289510 + 0.103815 * z11
θ_33

# no ponto de murcha permanente (θ_1500kPa).
θ_1500 = 0.214008 + 0.0862945 * z13
θ_1500

###############################################################################
sessionInfo()
##teste para reverter o commit
###teste 2