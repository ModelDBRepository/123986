function Ttmesures
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.

global Matpn mattempmoy indices changex NPN Init matcan indican newmatpn NED

le=length(indices);

[Cpn,Ipn]=sort(changex);
indicnul=find(Cpn==0);
limite=length(indicnul);
Ipnmax=Ipn(limite+1:NPN);
Matpnchange=Matpn(Ipnmax,:);

nombreperiodes=size(mattempmoy,2);
Nneuractifs=size(Matpnchange,1);
mattempchange=mattempmoy(Ipnmax,:);

tempparper=sum(sum(mattempchange))/max(Nneuractifs,1);
vparper=sum(mattempmoy)/max(Nneuractifs,1); 

matcan=Definican(vparper,Nneuractifs, indices);
indican=indices-indices(1)+1;


tempssomme=zeros(1,Nneuractifs);
activitetot=zeros(1,Nneuractifs);

for i=1:Nneuractifs
    for j=size(Init,2):size(Matpnchange,2)
        if Matpnchange(i,j)>0
            tempssomme(i)=tempssomme(i)+j;
            activitetot(i)=activitetot(i)+1;
        end
    end
end

precocite=tempssomme./activitetot;

[Pneur,Indpneur]=sort(precocite);
Matpnchangerange=zeros(0,size(Matpnchange,2));


for k=1:Nneuractifs
    Matpnchangerange=[Matpnchangerange; Matpnchange(Indpneur(k),:)];
end
Matpnchangerange=Matpnchangerange(:,indices(1):indices(le)-1);
newmatpn=zeros(0,indices(le)-indices(1));


for  k=1:Nneuractifs
    newmatpnv=zeros(1,0);
    for n=1:size(mattempmoy,2)
        vinter=Matpnchangerange(k,indices(n)-indices(1)+1:indices(n+1)-indices(1));
        vinter=sort(vinter);
        vinter=fliplr(vinter);
        newmatpnv=[newmatpnv,vinter];
    end
    newmatpn=[newmatpn;newmatpnv];
end
    


matcanmoy=Moytemp(matcan,indican);
matmoy=Moytemp(newmatpn,indican);
matcannorm=Normacol(matcanmoy);
matpnnorm=Normacol(matmoy);

distrefv=Dist(matcannorm);
NED=Dist(matpnnorm)/distrefv
succes=zeros(1,0);
if NED>0.7
    succes=[succes,NED];
end

ver=Normacol(Matpnchange');
ver=ver';
verifh=zeros(0);
for i=1:size(ver,1)
    for j=1:size(ver,1)
        ve=ver(j,:);
        verifh(i,j)=ver(i,:)*ve';
    end
end

verifh=verifh-diag(ones(size(ver,1),1));
ver=matpnnorm;
ver=ver';
verifc=zeros(0);
for i=1:size(ver,1)
    for j=1:size(ver,1)
        ve=ver(j,:);
        verifc(i,j)=ver(i,:)*ve';
    end
end
verifc=verifc-diag(ones(size(ver,1),1));


