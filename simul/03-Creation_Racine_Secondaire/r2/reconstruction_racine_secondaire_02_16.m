
close
clear all
clc

disp('Debut programme')
disp('temps de traitement : 0.5 secondes environ')
disp(' ')

tic % mesure du temps de traitement
% ****************************************

% chargement matrice
NomDuFichier = '02-Racine';
ExtensionDuFichier = '.csv';
LeNomDuFichier = [NomDuFichier, ExtensionDuFichier];
LaMatrice = csvread(LeNomDuFichier);

%% ****************************************
%% ****************************************

% **** 1 Droite ********
NomMatriceLog = '01-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 90;
ColonneOrigine = 650;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 1 Gauche ********
NomMatriceLog = '06-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 110;
ColonneOrigine = 660;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 2 Droite ********
NomMatriceLog = '02-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 225;
ColonneOrigine = 665;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 2 Gauche ********
NomMatriceLog = '07-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 220;
ColonneOrigine = 665;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 3 Droite ********
NomMatriceLog = '03-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 310;
ColonneOrigine = 670;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 3 Gauche ********
NomMatriceLog = '08-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 380;
ColonneOrigine = 666;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 4 Droite ********
NomMatriceLog = '04-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 450;
ColonneOrigine = 670;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 4 Gauche ********
NomMatriceLog = '09-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 500;
ColonneOrigine = 685;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 5 Droite ********
NomMatriceLog = '05-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 550;
ColonneOrigine = 702;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 5 Gauche ********
NomMatriceLog = '10-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 575;
ColonneOrigine = 705;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

%% ****************************************
%% ****************************************
%% svg
NomDuFichier = 'racine_secondaire';
VersionAlgo = '_02_14';
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
