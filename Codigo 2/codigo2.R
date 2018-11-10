ruina_jugador=function(u,N,p){
k=u;j=0; C=u
while(k>0&&k<N){
r=rbinom(1,1,p)
e=2*r-1; y=k+e; k=y; j=j+1
C=c(C,k)}
plot(0:j,C,type="o",ylim=c(0,N))
abline(h=c(0,N),v=c(0,j))
a=j/2; b=.8*N
text(a,b,labels=paste('Num. Apuestas =',j),pos=3,cex=2,col="blue")
j}
##EJEMPLO
ruina_jugador(2,100,.486)
