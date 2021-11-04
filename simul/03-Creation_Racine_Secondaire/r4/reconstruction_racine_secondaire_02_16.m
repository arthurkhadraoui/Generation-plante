
close
clear all
clc

disp('Debut programme')
disp('temps de traitement : 0.5 secondes environ')
disp(' ')

tic % mesure du temps de traitement
% ****************************************

% chargement matrice
NomDuFichier = '04-Racine';
ExtensionDuFichier = '.csv';
LeNomDuFichier = [NomDuFichier, ExtensionDuFichier];
LaMatrice = csvread(LeNomDuFichier);

%% ****************************************
%% ****************************************

% **** 1 Droite ********
NomMatriceLog = '01-Log.csv';
LongeurRacineSecondaire = 350;
LigneOrigine = 90;
ColonneOrigine = 570+56;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 1 Gauche ********
NomMatriceLog = '06-Log.csv';
LongeurRacineSecondaire = 365;
LigneOrigine = 120;
ColonneOrigine = 580+61;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 2 Droite ********
NomMatriceLog = '02-Log.csv';
LongeurRacineSecondaire = 300;
LigneOrigine = 225;
ColonneOrigine = 550;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 2 Gauche ********
NomMatriceLog = '07-Log.csv';
LongeurRacineSecondaire = 365;
LigneOrigine = 220;
ColonneOrigine = 555;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 3 Droite ********
NomMatriceLog = '03-Log.csv';
LongeurRacineSecondaire = 360;
LigneOrigine = 310;
ColonneOrigine = 510+92;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 3 Gauche ********
NomMatriceLog = '08-Log.csv';
LongeurRacineSecondaire = 450;
LigneOrigine = 380;
ColonneOrigine = 510+110;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 4 Droite ********
NomMatriceLog = '04-Log.csv';
LongeurRacineSecondaire = 480;
LigneOrigine = 450;
ColonneOrigine = 480+153;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 4 Gauche ********
NomMatriceLog = '09-Log.csv';
LongeurRacineSecondaire = 450;
LigneOrigine = 500;
ColonneOrigine = 505+152;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 5 Droite ********
NomMatriceLog = '05-Log.csv';
LongeurRacineSecondaire = 480;
LigneOrigine = 550;
ColonneOrigine = 485+172;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 5 Gauche ********
NomMatriceLog = '10-Log.csv';
LongeurRacineSecondaire = 400;
LigneOrigine = 595;
ColonneOrigine = 480+168;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

%% ****************************************
%% ****************************************
%% svg
NomDuFichier = 'racine_secondaire';
VersionAlgo = '_02_16';
NomDuFichierRecontruction = [NomDuFichier, VersionAlgo];
ExtensionDuFichier = '.csv';
LeNomDuFichier = [NomDuFichierRecontruction, ExtensionDuFichier];

%% fichier csv
%dlmwrite(LeNomDuFichier, LaMatrice, 'delimiter', ',');

%% image
ExtensionImage = '.tiff';
imwrite(LaMatrice, [NomDuFichierRecontruction, ExtensionImage]);

% ****************************************
%% ****************************************

disp(' ')

Temps = toc % mesure du temps de traitement

disp('Fin traitement des donnees')
