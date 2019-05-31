%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
%For a series of random simulations

tic
clear all
global Nneur epsilon Temps NPN
global Kex Kin Ferex Ferin Retarin Vex Vin Kr Vr
global hasardmat hasardvect hasardevol hasardinit
global seedscalmat seedscalvect seedscalevol 
global tempspropre neurosc neurtonic NED

%Parameter values
Retarin=2;
Kex=4;
Kin=40;
Ferex=0;
Ferin=0;
Vex=1;
Vin=5;
Vr=4;
Kr=10;

Temps=100;
Nneur=200;
NPN=100;

epsilon=0;
hasardmat=1;
hasardvect=1;
hasardevol=1;
hasardinit=1;


%Filename 
x=clock;
y=[x(4),x(5),x(3),x(2), x(1)];
z=strcat(num2str(y(1)),'h',num2str(y(2)),'_',num2str(y(3)),'_',num2str(y(4)),'_',num2str(y(5)));
nomfichier1=strcat('par',z);
nomfichier2=strcat('sim',z);
fid = fopen(nomfichier1,'w');
fprintf(fid,'sim\tsmat\tsvect\tsev\tnpn\tRetarin\tVex\tVin\tKex\tKin\tFerex\tFerin\tVr\tKr\teps\r');
fclose(fid);
fid = fopen(nomfichier2,'w');
fprintf(fid,'sim\tper\tnosc\tntonic\tdisv\trglentint\trglinex\terreur\tcover\tcohor\r');
fclose(fid);

%Screen display
fprintf('nom de fichier %s\n', nomfichier1)

compt_simul=0;
for Kr=1:1:40
    for Kex=1:1:100
        compt_simul=compt_simul+1;
        fprintf('simulation n° %5d\n',compt_simul)
        Scriptsim;
        
        fid=fopen(nomfichier1,'a');
        fprintf(fid,'%5d\t%8d\t%8d\t%8d\t%4d\t%2d\t%3d\t%3d\t%4d\t%4d\t%4d\t%4d\t%3d\t%4d\t%3.4f\n',compt_simul,seedscalmat,seedscalvect,seedscalevol,NPN,Retarin,Vex,Vin,Kex,Kin,Ferex,Ferin,Vr,Kr,epsilon);
        fclose(fid);
           
        fid=fopen(nomfichier2,'a');
        fprintf(fid,'%5d\t%3d\t%4d\t%4d\t%1.4f\n',compt_simul,tempspropre,neurosc,neurtonic,NED);
        fclose(fid); 
end
end
fprintf('nom de fichier %s\n', nomfichier1)
toc
   