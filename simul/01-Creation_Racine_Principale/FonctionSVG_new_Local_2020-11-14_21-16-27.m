
function [] = FonctionSVG_new_Local(Num, Version_Algo, NomFichier, LaMatrice, LaMatriceLog)

    EnteteNomFichier = [Num, '-', NomFichier, '-', Version_Algo, '-'];

    %ExtensionImage = '.png';
    ExtensionImage = '.tiff';
    %ExtensionImage = '.jpg';

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
