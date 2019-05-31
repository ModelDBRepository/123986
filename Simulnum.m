function Simulnum(numerolignes)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%numeroligne is the index of a simulation line in a couple of recorded
%files :'parhourhminutes_day_month' and 'simhourhminutes_day_month'


global smat svect sevol retarin Vex Vin Kex Kin Ferex Ferin Vr Kr eps
global seedscalmat seedscalvect seedscalevol
global Init Rent Nneur Temps Poids Retards NPN 
global epsilon

global g 
global Matpn indices mattempmoy

for i=1:length(numerolignes)
    seedscalmat=smat(numerolignes(i));                  %seeds of the random generators
    seedscalvect=svect(numerolignes(i));
    seedscalevol=sevol(numerolignes(i));    
    retarinl=retarin(numerolignes(i));
    Vexl=Vex(numerolignes(i));
    Vinl=Vin(numerolignes(i));
    Kexl=Kex(numerolignes(i));
    Kinl=Kin(numerolignes(i));
    Ferexl=Ferex(numerolignes(i));
    Ferinl=Ferin(numerolignes(i));
    Vrl=Vr(numerolignes(i));
    Krl=Kr(numerolignes(i));
    epsilon=eps(numerolignes(i));
     
    Nneur=200;
    NPN=100;
    Temps=100;                  %number of simulation time steps
    
    Poids=Mathasard(NPN,Nneur,Kexl,Kinl,Ferexl,Ferinl,Vexl,Vinl,0);

Retards=ones(Nneur);
for k=1:Nneur
    for j=1:Nneur
        if Poids(k,j)<0
            Retards(k,j)=retarinl;
        end
    end
end
Init=Creinit(retarinl,Nneur,0,1);
Rent=Vecthasard(Nneur,Krl,Vrl,0);
Evol(epsilon,0);
Periodeminmax
Demin
mattempmoy=Moytemp(Matpn, indices);
Ttmesures




set(gcf,'Color',[1 1 1]);
subplot(2,2,g+0)
imagesc(Matpn)
colormap(flipud(hot))
set(gca,'Ylim',[0 NPN])
set(gca,'YDir','normal')
set(gca,'Xlim',[0 Temps])
box off
Sompn=sum(Matpn);
subplot(2,2,g+2)
plot(Sompn,'k')
set(gca,'Xlim',[0 Temps])
box off

end