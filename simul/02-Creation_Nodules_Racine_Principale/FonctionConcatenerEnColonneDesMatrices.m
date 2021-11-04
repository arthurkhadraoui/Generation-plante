
function [Matrice] = FonctionConcatenerEnColonneDesMatrices(Matrice_1, Matrice_2)
    Ligne = 1;
    Colonne = 2;

    % Matrice_1
    NbLignesMatrice_1 = size(Matrice_1, Ligne);
    NbColonnesMatrice_1 = size(Matrice_1, Colonne);

    % Matrice_2
    NbLignesMatrice_2 = size(Matrice_2, Ligne);
    NbColonnesMatrice_2 = size(Matrice_2, Colonne);

    if NbLignesMatrice_1 > NbLignesMatrice_2
        Matrice_2 =[Matrice_2; zeros( (NbLignesMatrice_1 - NbLignesMatrice_2),  NbColonnesMatrice_2)];
    else
        Matrice_1 = [Matrice_1; zeros((NbLignesMatrice_2 - NbLignesMatrice_1),  NbColonnesMatrice_1)];
    end

    Matrice = [Matrice_1 Matrice_2];
end
