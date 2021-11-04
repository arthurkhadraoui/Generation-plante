
function [NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image()
    % fichier
    [Conf_image, Conf_nodule, Conf_numero_maxi_fichier, Conf_racine_primaire, Conf_racine_secondaire Conf_segment] = FonctionLireNomsFichiersConf();
    FichierID = fopen(Conf_image);
    LeTableauDeCellules = textscan(FichierID, '%s', 'delimiter', ';');
    fclose(FichierID);

    % les data dans une cel-array
    LesCellules = LeTableauDeCellules{1, 1};

    % les data
    NbLignes = str2double(LesCellules{1, 1});
    NbColonnes = str2double(LesCellules{3, 1});
    NbImages = str2double(LesCellules{5, 1});

end
