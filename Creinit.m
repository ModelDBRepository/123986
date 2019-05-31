function Init=Creinit(retardmax,Nneur,proba, choixhasard)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%Definition of the initial state of the network
%retardmax = 2: maximal value in the delay matrix 
%Nneur=200 : total number of neurons in the network
%proba= 0 : probability of getting non nul activity in the initial state 
%choixhasard= 1: the seed is given if 0 or is random if 1.

global seedscalinit 

if choixhasard==1
     seedscalinit=rand('seed');
end
rand('seed',seedscalinit)
Init=zeros(Nneur,retardmax);
for i=1:Nneur
    for j=1:retardmax
        r=rand;
        if r<proba
            Init(i,j)=1;
        else
            Init(i,j)=0;
        end
    end
end
