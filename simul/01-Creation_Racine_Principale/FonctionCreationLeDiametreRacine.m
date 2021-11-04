
function [LaMatrice, LaMatriceLog] = FonctionCreationLeDiametreRacine(LaMatrice, LaMatriceLog)

    [PourcentageOrigineMini PourcentageVariationOrigineMini, DiametreMaxRacinePrimaire, DiametreMinRacinePrimaire] = FonctionLireParametresFichierConf_racine_primaire();

    Nblignes = size(LaMatriceLog, 1);
    LongueurRacine = Nblignes;
    %LargeurDebutRacine = 58 - round(rand() * 10);
    %LargeurFinRacine = 38  - round(rand() * 10);
    VaraitionDiametre = round(rand() * 2);
    LargeurDebutRacine = DiametreMaxRacinePrimaire - VaraitionDiametre;
    LargeurFinRacine = DiametreMinRacinePrimaire  - VaraitionDiametre;
    b = LargeurDebutRacine;
    a = (LargeurFinRacine - b) / LongueurRacine;

    [LaMatriceLog] = FonctionConcatenerEnColonneDesMatrices(LaMatriceLog, zeros(Nblignes, 2));

    for i = 1 : Nblignes
        diametre = (a * i) + b;
        rayon = round (diametre / 2);
        IndiceColonneMin = LaMatriceLog(i, 2) - rayon;
        LaMatriceLog(i, 3) = IndiceColonneMin;
        IndiceColonneMax = LaMatriceLog(i, 2) + rayon;
        LaMatriceLog(i, 4) = IndiceColonneMax;
        IndiceLigne = LaMatriceLog(i, 1);
        LaMatrice(IndiceLigne, IndiceColonneMin : IndiceColonneMax) = 1;
    end

end
