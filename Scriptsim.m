function Scriptsim
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%for one random simulation (called by Progsim.m)

global Nneur NPN Poids Rent Init Retards epsilon Temps
global Kex Kin Ferex Ferin Retarin Vex Vin Kr Vr
global indices 
global mattempmoy Matpn
global hasardmat hasardvect hasardevol hasardinit

Poids1=Mathasard(100,200,Kex,Kin,Ferex,Ferin,Vex,Vin,hasardmat);
%Poids=Poids1;
Poids2=Mathasard(100,200,2,2,0,0,4*Vin,2*Vin,hasardmat);
Poids=Poids1+Poids2;

Retards=ones(Nneur);
for i=1:Nneur
    for j=1:Nneur
        if Poids(i,j)<0
            Retards(i,j)=Retarin;
        end
    end
end
Init=Creinit(Retarin,Nneur,0,hasardinit);
Rent=Vecthasard(Nneur,Kr,Vr,hasardvect);
Evol(epsilon,hasardevol);
Periodeminmax
Demin
mattempmoy=Moytemp(Matpn, indices);
Ttmesures



