
clear
clc

disp('debut programme')

% calcul temps fin traitement
LeTemps = now;
DebutTraitement = datestr(LeTemps)

% Conf_image
[NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image();

% type de fichiers svg
%TypeSvg = 0; %all
%TypeSvg = 1; % image
%TypeSvg = 2; % csv

TypeSvg = 1

if TypeSvg == 0 % all
    TempsDetraitementUnitaire = 1.5896;
elseif TypeSvg == 1 % image
    TempsDetraitementUnitaire = 0.58662;
elseif TypeSvg == 2 % csv
    TempsDetraitementUnitaire = 1.5352;
else
    disp('mauvais TypeSvg')
end

DureeTraitementEnSeconde = round(TempsDetraitementUnitaire * NbImages);
disp(['temps ', num2str(DureeTraitementEnSeconde), ' secondes'])
disp(['fin traitement theorique : ', datestr(addtodate(LeTemps, DureeTraitementEnSeconde, 'second'))])
tic;

disp('')

% gestion version et nom
Version_Algo = '05_07';
NomFichier = 'Creation_Racine_Principale';

for i = 1 : NbImages
    % creation axe
    disp(['création axe N ', num2str(i)])

    [LaMatrice, LaMatriceLog] = FonctionDonnerUneRacine();
    disp(['création diametre N ', num2str(i)])

    % creation diametre
    [LaMatrice, LaMatriceLog] = FonctionCreationLeDiametreRacine(LaMatrice, LaMatriceLog);

    % sauvegarde matrices + images
    disp(['sauvegarde N ', num2str(i)])
    FonctionSVG_new_TypeSvg(i, Version_Algo, NomFichier, LaMatrice, LaMatriceLog, TypeSvg);
end

temps = toc

disp(' ')

LeTemps = now;
FinTraitement = datestr(LeTemps)
disp('fin programme')
