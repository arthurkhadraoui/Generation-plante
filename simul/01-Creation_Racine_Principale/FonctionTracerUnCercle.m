
function [LaMatrice LaMatriceLog] = FonctionTracerUnCercle(Diametre, Centre_Ligne, Centre_Colonne, LaMatrice)
    LaMatriceLog = [];
    LeDiametre = round(Diametre - 2);
    LeRayon = round(LeDiametre / 2) - 1;

    if (Centre_Colonne > LeRayon) && (Centre_Ligne > LeRayon)
        for iColonne = (Centre_Colonne - LeRayon) : (Centre_Colonne + LeRayon)
            for jLigne = (Centre_Ligne - LeRayon) : (Centre_Ligne + LeRayon)
                LaValeur = sqrt((iColonne - Centre_Colonne) ^ 2 + (jLigne - Centre_Ligne) ^ 2);
                if LaValeur <= LeRayon
                    LaMatrice(jLigne, iColonne) = 1;
                    LaMatriceLog = [LaMatriceLog; jLigne iColonne];
                end
            end
        end
    end
end
