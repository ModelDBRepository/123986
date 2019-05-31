function Periodeminmax
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.

global Init Matpn period osc nombrosc puissancemax tempspropre neurosc neurtonic

tempsinit=size(Init, 2);
somme=sum(Matpn(:,tempsinit+1:size(Matpn,2)));
osc=somme-mean(somme);
long=length(osc);
fft_osc=fft(osc,long);
P=(fft_osc.*conj(fft_osc))/long;
f=200/long*(1:floor(long/2)+1);

puissancemax=max(P(1:1:floor(long/2)+1));
indice=find(P(1:1:floor(long/2)+1)==max(P(1:1:floor(long/2)+1)));
indice=indice(length(indice));
periodesec=1/f(indice);
tempspropre=ceil(periodesec*200);       
nombrosc=floor(long/tempspropre);

period=tempspropre;

    yf=somme;
    maximean=zeros(0);
    minimean=zeros(0);
        for i=tempsinit+1:length(yf)-tempspropre
            maximean=[maximean, max(yf(i:i+tempspropre))];
            minimean=[minimean, min(yf(i:i+tempspropre))];
        end
    minimum=mean(minimean);
    maximum=mean(maximean);
    neurosc=round(maximum-minimum);
    neurtonic=round(minimum);