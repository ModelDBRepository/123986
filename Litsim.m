function Litsim(filename)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
global mat csim vper vosc vtonic vdisv 

mat=Lecture(filename);

csim=mat(:,1);
vper=mat(:,2);
vosc=mat(:,3);
vtonic=mat(:,4);
vdisv=mat(:,5);


