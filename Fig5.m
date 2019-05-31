%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%Fig.5

global  vper vosc vdisv 
global  Kex  Kr 

Litpar('par22h20_10_11')
Litsim('sim22h20_10_11') 

Nsim=4000;      %number of simulations 
nKr=40;         %number of Kr values 
nKex=100 ;      %number of Kex values 

vper=vper(1:Nsim);
vdisv = vdisv (1:Nsim);
Kex=Kex(1:Nsim);
Kr=Kr(1:Nsim);

matper=reshape(vper,nKr,nKex);
matdisv=reshape(vdisv,nKr,nKex);
matkex=reshape(Kex,nKr,nKex);
matkr=reshape(Kr,nKr,nKex);

subplot(2,2,1)
contourf(matkex,matkr,matdisv)
set(gcf,'Color',[1 1 1])
set(gca,'Xlim',[1 30])
colorbar('vert')
subplot(2,2,3)
contourf(matkex,matkr,matper)
set(gcf,'Color',[1 1 1])
set(gca,'Xlim',[1 30])
colorbar('vert')

Litpar('par17h16_14_11')
Litsim('sim17h16_14_11') 


Nsim=4000;
nKr=40;
nKex=100 ;

vosc=vosc(1:Nsim);
vdisv = vdisv (1:Nsim);
Kex=Kex(1:Nsim);
Kr=Kr(1:Nsim);

matosc=reshape(vosc,nKr,nKex);
matdisv=reshape(vdisv,nKr,nKex);
matkex=reshape(Kex,nKr,nKex);
matkr=reshape(Kr,nKr,nKex);

subplot(2,2,2)
contourf(matkex,matkr,matdisv)
set(gcf,'Color',[1 1 1])
set(gca,'Xlim',[1 30],'CLim',[0.0065 0.7])
colorbar('vert')
subplot(2,2,4)
contourf(matkex,matkr,matosc)
set(gcf,'Color',[1 1 1])
set(gca,'Xlim',[1 30])
colorbar('vert')


