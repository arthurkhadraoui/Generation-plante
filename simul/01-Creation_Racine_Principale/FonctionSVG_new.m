
function [] = FonctionSVG_new(i, Version_Algo, NomFichier, LaMatrice, LaMatriceLog, SVGImageSeulement)
    [LeCheminDeSVG] = FonctionDonnerRepertoiredeSauvegarde();
    [Num] = FonctionDonnerLesNumerosDansNomFichier(i);

    EnteteNomFichier = [LeCheminDeSVG, Num, '-', NomFichier, '-', Version_Algo, '-'];

    %ExtensionImage = '.png';
    ExtensionImage = '.tiff';
    %ExtensionImage = '.jpg';

    if SVGImageSeulement
        % image
        NomLog = 'Matrice_Image';
        LeNomFichier = [EnteteNomFichier, NomLog];
        imwrite(LaMatrice, [LeNomFichier, ExtensionImage]);
    else
        % LaMatrice
        Extension = '.csv';
        Delimiteur = ',';
        NomLog = 'Matrice_CSV';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension], LaMatrice, 'delimiter', Delimiteur);

        % image
        NomLog = 'Matrice_Image';
        LeNomFichier = [EnteteNomFichier, NomLog];
        imwrite(LaMatrice, [LeNomFichier, ExtensionImage]);

        % LaMatriceLog
        NomLog = 'Matrice_Log';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension], LaMatriceLog, 'delimiter', Delimiteur);
    end
end
