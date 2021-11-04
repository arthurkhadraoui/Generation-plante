
function [] = FonctionSVG_new_TypeSvg(i, Version_Algo, NomFichier, LaMatrice, LaMatriceLog, TypeSvg);

    [LeCheminDeSVG] = FonctionDonnerRepertoiredeSauvegarde();
    [Num] = FonctionDonnerLesNumerosDansNomFichier(i);

    EnteteNomFichier = [LeCheminDeSVG, Num, '-', NomFichier, '-', Version_Algo, '-'];

    % image
    %ExtensionImage = '.png';
    ExtensionImage = '.tiff';
    %ExtensionImage = '.jpg';

    if TypeSvg == 1
        % image
        NomLog = 'Matrice_Image';
        LeNomFichier = [EnteteNomFichier, NomLog];
        imwrite(LaMatrice, [EnteteNomFichier, ExtensionImage]);
    elseif TypeSvg == 0
        % LaMatrice
        Extension = '.csv';
        Delimiteur = ',';
        NomLog = 'Matrice_CSV';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension],LaMatrice,'delimiter',Delimiteur)

        % image
        NomLog = 'Matrice_Image';
        LeNomFichier = [EnteteNomFichier, NomLog];
        imwrite(LaMatrice, [LeNomFichier, ExtensionImage]);

        % LaMatriceLog
        NomLog = 'Matrice_Log';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension], LaMatriceLog, 'delimiter', Delimiteur);

    elseif TypeSvg == 2
        % LaMatrice
        Extension = '.csv';
        Delimiteur = ',';
        NomLog = 'Matrice_CSV';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension], LaMatrice, 'delimiter', Delimiteur);

        % LaMatriceLog
        NomLog = 'Matrice_Log';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension], LaMatriceLog, 'delimiter', Delimiteur);
    else
        disp('mauvais TypeSvg de FonctionSVG_new_Local')
    end
end
