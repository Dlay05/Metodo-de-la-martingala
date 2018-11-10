N<-1000
#simulaciones
xt<- 110
# Dinero Objetivo
simulacion <- data.frame(partidas= integer(0), resultado= integer(0), ganadas=integer(0))



for (i in 1:N){
x0<-100 #dinero inicial
apu<-1 # dinero que apostamos por partida
g<-1
p<-1
j<-1
    while(x0>0 & x0<xt){
        resultado<-runif(1,0,1)
        
        if(x0<apu){apu = x0}
        if(resultado>=(18/37)){
        x0<-x0+apu
        g<-g+1
        apu <- 1
        }else{
        x0<-x0-apu
        apu<-apu*2
        p<-p+1
        }
j<-j+1
}
simulacion[i,1]<-j
simulacion[i,2]<-x0
simulacion[i,3]<-g
simulacion[i,4]<-p
}

simulacion

head(simulacion)
mean(simulacion$partidas)
max(simulacion$partidas)
summary(simulacion)
hist(simulacion$partidas, labels=TRUE, ylim=c(0,10500), nclass=3, main="Simulacion")
