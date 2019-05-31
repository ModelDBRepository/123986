%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%Fig.7

global  smat Vex Vin Kex Kin Ferex Ferin 
global  vdisv 

Litpar('par12h37_8_9')
Litsim('sim12h37_8_9') 


Nsim=5000;                          %Number of simulations
i=1351;                             %any number between 1 and Nsim

seedscalmat=smat(i);
vdisv=vdisv(1:Nsim);

Poids1=Mathasard(100,200,Kex(i),Kin(i),Ferex(i),Ferin(i),Vex(i),Vin(i),0);
subplot(2,2,1)
load('fig7colormap','mycmap');
imagesc(Poids1)
set(gcf,'Colormap',mycmap)
set(gca,'Ydir','normal','CLim',[-15 20])
colorbar('vert')
subplot(2,2,2)
hist(vdisv,100)
set(gca,'Xlim',[0 0.8])

Litpar('par18h23_4_9')
Litsim('sim18h23_4_9')

Poids2=Mathasard(100,200,2,2,0,0,4*Vin(i),2*Vin(i),0);
Poids=Poids1+Poids2;

subplot(2,2,3)
imagesc(Poids)
set(gcf,'Colormap',mycmap)
set(gca,'Ydir','normal','CLim',[-15 20])
colorbar('vert')
subplot(2,2,4)
vdisv=vdisv(1:Nsim);
hist(vdisv,100)
set(gca,'Xlim',[0 0.8])
set(gcf,'Color',[1 1 1])

