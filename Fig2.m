%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%Fig. 2

global matcan 

Fabrican(2,5,5,20)              %(p,P,k,T)

figure
subplot(2,1,1)
imagesc(matcan)
colormap(flipud(hot))
subplot(2,1,2)
plot(sum(matcan))
set(gca,'Ylim',[0 6]);
set(gcf,'color',[1 1 1]);
