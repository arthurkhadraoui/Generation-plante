
clear
clc

% calcul temps debut traitement
LeTemps = now;
DebutTraitement = datestr(LeTemps)

% type de fichiers svg
%TypeSvg = 0; %all
%TypeSvg = 1; % image
%TypeSvg = 2; % csv
TypeSvg = 0;

if TypeSvg == 0 % all
    TempsDetraitementUnitaire = 1.95;
elseif TypeSvg == 1 % image
    TempsDetraitementUnitaire = 1.10;
elseif TypeSvg == 2 % csv
    TempsDetraitementUnitaire = 1.90;
else
    disp('mauvais TypeSvg')
end

% Conf_image
[NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image();

Version_Algo = '02_06';

% liste des matrice  CSV
LePatronDeFichier = '*Matrice_CSV.csv';
[LaListeDesFichiersMatriceCSV, LeNbDeFichiersMatriceCSV] = FonctionDonnerLesNomsEtLeNbDesFichiers(LePatronDeFichier);

if LeNbDeFichiersMatriceCSV == 0
    disp('pas de fichier dans le repertoire de lecteure')
end

% Liste des fichiers Log racine
LePatronDeFichier = ('*Matrice_Log.csv');
[LaListeDesFichiersMatriceLog, LeNbDeFichiersMatriceLog] = FonctionDonnerLesNomsEtLeNbDesFichiers(LePatronDeFichier);

% verif meme nb de fichier CSV et Log
if (LeNbDeFichiersMatriceCSV == LeNbDeFichiersMatriceLog)
    disp(' ')
    disp('OK')
else
    disp('NO-OK')
    disp(LeNbDeFichiersMatriceCSV)
    disp(LeNbDeFichiersMatriceLog)
end

% calucl duree traitement
DureeTraitementEnSeconde = TempsDetraitementUnitaire * LeNbDeFichiersMatriceLog;
disp(['temps ', num2str(DureeTraitementEnSeconde), ' secondes'])
disp(['fin traitement theorique : ', datestr(addtodate(LeTemps, DureeTraitementEnSeconde, 'second'))])
tic;

disp('')

LeNbDeNodules = 15 + round(rand() * 5);

% ajoute des nodules au fichier matrice CSV et svg en image
for i = 1 : LeNbDeFichiersMatriceLog
    %disp(i)
    LeNomFichierMatriceLog = LaListeDesFichiersMatriceLog{1, i}
    LaMatriceLogRacine = csvread(LeNomFichierMatriceLog);

    %LaListeFichiersCSV{1, i}
    LeNomFichierMatriceCSV = LaListeDesFichiersMatriceCSV{1, i}
    LaMatrice = csvread(LeNomFichierMatriceCSV);

    NomFichier = [LaListeDesFichiersMatriceLog{1, i},'_Nodules'];

    [LaMatrice LaMatriceLogNodules] = FonctionTracerDesNodules(LaMatrice, LaMatriceLogRacine, LeNbDeNodules);

    Num = '200';

    % svg matrices + image
    FonctionSVG_new_TypeSvg(i, Version_Algo, NomFichier, LaMatrice, LaMatriceLogNodules, TypeSvg);
    disp(' ')
end

disp('')
temps = toc
disp('fin')
