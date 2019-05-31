function Demin
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.

global period indices Matpn Matln

signal=sum(Matpn)+sum(Matln);
signal=signal-mean(signal);
dsignal=diff(signal);
dsignal=[0,dsignal];
dsignal2=[dsignal(2:length(signal)),0];
multi=dsignal.*dsignal2;


replats=find((multi<=0&signal<=0));
frontieres=diff(replats);
debutplage=1;
compte=0;
for i=1:length(frontieres)
    if frontieres(i)>1+floor(min(period,6)/3)
        compte=compte+1;
        finplage(compte)=replats(i);
        if i<length(frontieres)
            debutplage(compte+1)=replats(i+1);
        else
            debutplage(compte+1)=replats(i);
        end
    end
end

finplage(compte+1)=replats(length(replats));
milieuplage=round((finplage-debutplage)/2)+debutplage;

if  length(milieuplage)>1
    indices=milieuplage(1:length(milieuplage)-1);
else
    milieuplage=[milieuplage;milieuplage];
    indices=[debutplage(1),milieuplage(1),finplage(length(finplage))];
end
