
function [LaMatrice] = FonctionTracerRacineSecondaireAGauche(LongeurRacineSecondaire, LigneOrigine, ColonneOrigine, NomMatriceLog, LaMatrice)

    LaMatriceLog = csvread(NomMatriceLog);
    NbLignes = size(LaMatriceLog, 1);
    NbColonnes = size(LaMatriceLog, 2);

    LaMatriceLog = LaMatriceLog(1:NbLignes, 3:4);

    LeDebut = LaMatriceLog(1, 1);
    LaMatriceLogReduite = LaMatriceLog - LeDebut;
    LeDebut = LaMatriceLogReduite(1, 1);

    for i = 1 : LongeurRacineSecondaire
        LigneHaute = LigneOrigine + LaMatriceLogReduite(i, 1);
        LigneBasse = LigneOrigine + LaMatriceLogReduite(i, 2);
        Colonne = (ColonneOrigine - 1) - i;
        LaMatrice(LigneHaute: LigneBasse, Colonne) = 1;
    end
end
