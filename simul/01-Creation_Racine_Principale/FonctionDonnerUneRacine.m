
function [LaMatrice, LaMatriceLog] = FonctionDonnerUneRacine()

    [LigneOrigine, ColonneOrigine] = FonctionDonnerLOrigineDeLaRacinePrimaire();
    [LaMatrice, LaMatriceLog] = FonctionDonnerUnAxe(LigneOrigine, ColonneOrigine);
end
