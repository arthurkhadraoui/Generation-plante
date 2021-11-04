
function [] = FonctionSVG_new_Local_SVGImageSeulement(Num, Version_Algo, NomFichier, LaMatrice, LaMatriceLog, SVGImageSeulement)

    %EnteteNomFichier = [Num, '-', NomFichier, '-', Version_Algo, '-'];
    EnteteNomFichier = [NomFichier, '-'];
    % image
    %ExtensionImage = '.png';
    ExtensionImage = '.tiff';
    %ExtensionImage = '.jpg';

    if SVGImageSeulement == 1
        % image
        NomLog = 'Matrice_Image_Nodule';
        LeNomFichier = [EnteteNomFichier, NomLog];
        imwrite(LaMatrice, [LeNomFichier, ExtensionImage]);
    else
        % LaMatrice
        Extension = '.csv';
        Delimiteur = ',';
        NomLog = 'Matrice_CSV__Nodule';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension], LaMatrice, 'delimiter', Delimiteur);

        % image
        NomLog = 'Matrice_Image_Nodule';
        LeNomFichier = [EnteteNomFichier, NomLog];
        imwrite(LaMatrice, [LeNomFichier, ExtensionImage]);

        % LaMatriceLog
        NomLog = 'Matrice_Log_Nodule';
        LeNomFichier = [EnteteNomFichier, NomLog];
        dlmwrite([LeNomFichier, Extension], LaMatriceLog, 'delimiter', Delimiteur);
    end
end
