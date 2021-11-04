
function [Conf_image, Conf_nodule, Conf_numero_maxi_fichier, Conf_racine_primaire, Conf_racine_secondaire Conf_segment] = FonctionLireNomsFichiersConf()

    % fichier
    MonFichier = 'Conf_nom_fichier_001.txt';
    FichierID = fopen(MonFichier);
    LeTableauDeCellules = textscan(FichierID, '%s', 'delimiter', ';');
    fclose(FichierID);

    % les data dans une cel-array
    LesCellules = LeTableauDeCellules{1, 1};

    % les data
    Conf_image = LesCellules{1, 1};
    Conf_nodule = LesCellules{2, 1};
    Conf_numero_maxi_fichier = LesCellules{3, 1};
    Conf_racine_primaire = LesCellules{4, 1};
    Conf_racine_secondaire = LesCellules{5, 1};
    Conf_segment = LesCellules{6, 1};
end
