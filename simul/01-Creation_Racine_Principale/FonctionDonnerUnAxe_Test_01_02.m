
clear
clc
disp('debut programme')
disp('temps environ 1 seconde(s)')
tic;

[NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image();
[LaMatrice] = FonctionCreationMatriceRacine(NbLignes, NbColonnes);

x1 = 1;
y1= 200;

[LaMatrice, LaMatriceLog] = FonctionDonnerUnAxe(x1, y1);

% LaMatrice
Version_Algo = '01_02';
NomFichier = 'FonctionDonnerUnAxe_Test_';

% utilitaire de svg
FonctionSVG(Version_Algo, NomFichier, LaMatrice, LaMatriceLog);

temps = toc
disp('fin programme')
