
close
clear all
clc

disp('Debut programme')
disp('temps de traitement : 0.5 secondes environ')
disp(' ')

tic % mesure du temps de traitement
% ****************************************

% chargement matrice
NomDuFichier = '01-Racine';
Num = ['-', NomDuFichier(1:2)];
ExtensionDuFichier = '.csv';
LeNomDuFichier = [NomDuFichier, ExtensionDuFichier];
LaMatrice = csvread(LeNomDuFichier);

%% ****************************************
%% ****************************************

% **** 1 Droite ********
NomMatriceLog = '01-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 100;
ColonneOrigine = 582;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 1 Gauche ********
NomMatriceLog = '06-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 150;
ColonneOrigine = 582;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 2 Droite ********
NomMatriceLog = '02-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 220;
ColonneOrigine = 590;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 2 Gauche ********
NomMatriceLog = '07-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 220;
ColonneOrigine = 590;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 3 Droite ********
NomMatriceLog = '03-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 330;
ColonneOrigine = 580;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 3 Gauche ********
NomMatriceLog = '08-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 380;
ColonneOrigine = 560;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 4 Droite ********
NomMatriceLog = '04-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 450;
ColonneOrigine = 550;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 4 Gauche ********
NomMatriceLog = '09-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 500;
ColonneOrigine = 580;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 5 Droite ********
NomMatriceLog = '05-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 550;
ColonneOrigine = 557;
[LaMatrice] = FonctionTracerRacineSecondaireADroite(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

% **** 5 Gauche ********
NomMatriceLog = '10-Log.csv';
LongeurRacineSecondaire = 200 + (200 * rand());
LigneOrigine = 605;
ColonneOrigine = 533;
[LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice);

%% ****************************************
%% ****************************************
%% svg
NomDuFichier = 'racine_secondaire';
VersionAlgo = '_02_16';
NomDuFichierRecontruction = [NomDuFichier, VersionAlgo, Num];
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
