
function [LaMatrice LaMatriceLogNodules] = FonctionTracerDesNodules(LaMatrice, LaMatriceLogRacine, LeNbDeNodules)

for i = 1 : LeNbDeNodules
    Diametre = 12  + round(rand() * 4);
    LongueurNodule = round((2.8 * Diametre) / 2);
    %disp([num2str(i),' : ', '01'])

    % lire matrice log
    Indice_Ligne = 100 + round(i * 40);
    Axe_Ligne_1 = LaMatriceLogRacine(Indice_Ligne, 1);
    Axe_Colonne_1 = LaMatriceLogRacine(Indice_Ligne, 2);
    Diametre_Min_Colonne_1 = LaMatriceLogRacine(Indice_Ligne, 3);
    FinAxeligne_2 =  round(Indice_Ligne + LongueurNodule);
    Axe_Ligne_2 = LaMatriceLogRacine(FinAxeligne_2, 1);
    %disp([num2str(i),' : ', '02'])

    Axe_Colonne_2 = LaMatriceLogRacine(FinAxeligne_2, 2);
    Diametre_Min_Colonne_2 = LaMatriceLogRacine(FinAxeligne_2, 3);
    Diametre_Max_Colonne_2 = LaMatriceLogRacine(Indice_Ligne + LongueurNodule, 4);
    %disp([num2str(i),' : ', '03'])

    Oppose = (Diametre_Min_Colonne_2 - Diametre_Min_Colonne_1)^2;
    logAdjacent = Axe_Ligne_2 - Axe_Ligne_1;
    Adjacent = (Axe_Ligne_2 - Axe_Ligne_1)^2;
    %if Adjacent == 0
        %tangenteAngle =0.0001;
    %else
        %tangenteAngle = Oppose / Adjacent; % div par zero
    %end
    tangenteAngle = Oppose / Adjacent;
    Angle = atan(tangenteAngle);
    AngleEnDegres = Angle * 180 / pi;
    %disp([num2str(i),' : ', '04'])

    Centre_Ligne = round((Axe_Ligne_1 + Axe_Ligne_2)/ 2);
    Centre_Colonne = round((Diametre_Min_Colonne_1 + Diametre_Min_Colonne_2)/ 2);
    %disp([num2str(i),' : ', '05'])

    DecalageLigne = 0;
    DecalageColonne = 0;
    %disp([num2str(i),' : ', '06'])

    [LaMatrice LaMatriceLogNodules] = FonctionTracerUnNodule(Diametre, Centre_Ligne, Centre_Colonne, LaMatrice, Angle, DecalageLigne, DecalageColonne);
    %disp([num2str(i),' : ', '07'])

    %%% nodule symetrique
    DecalageLigne_1 = 5;
    DecalageColonne_1 = round(Diametre * 0.8);
    %disp([num2str(i),' : ', '08'])

    [LaMatrice LaMatriceLogNodules_1] = FonctionTracerUnNodule(Diametre, Centre_Ligne, Centre_Colonne, LaMatrice, Angle, DecalageLigne_1, DecalageColonne_1);
    [LaMatriceLogNodules] = FonctionConcatenerEnColonneDesMatrices(LaMatriceLogNodules, LaMatriceLogNodules_1);
    %disp([num2str(i),' : ', '09'])
end

