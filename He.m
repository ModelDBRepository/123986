function y = He(x)
%BioSystems 89(2007) 244-256
%G.Horcholle-Bossavit et al.
% 0 if x<0
% 1 if x>0

if x==0
   y=1/2;
else
	y=(1+abs(x)/x)/2;
end;