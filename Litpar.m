function Litpar(filename)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.

global matpar cpar smat svect sevol retarin Vex Vin Kex Kin Ferex Ferin Vr Kr eps
matpar=Lecture(filename);

cpar=matpar(:,1);
smat=matpar(:,2);
svect=matpar(:,3);
sevol=matpar(:,4);
retarin=matpar(:,6);
Vex=matpar(:,7);
Vin=matpar(:,8);
Kex=matpar(:,9);
Kin=matpar(:,10);
Ferex=matpar(:,11);
Ferin=matpar(:,12);
Vr=matpar(:,13);
Kr=matpar(:,14);
eps=matpar(:,15);

