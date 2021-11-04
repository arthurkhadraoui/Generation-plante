
function [Conf_image, Conf_nodule, Conf_numero_maxi_fichier, Conf_racine_primaire, Conf_racine_secondaire Conf_segment] = FonctionLireNomsFichiersConf()
    % fichier
    MonFichier = 'Conf_nom_fichier_001.txt';
    LeTableauDeCellules = textread(MonFichier, '%s', 'delimiter', '\n');
    % variables
    Conf_image = LeTableauDeCellules{1, 1};
    Conf_nodule = LeTableauDeCellules{2, 1};
    Conf_numero_maxi_fichier = LeTableauDeCellules{3, 1};
    Conf_racine_primaire = LeTableauDeCellules{4, 1};
    Conf_racine_secondaire = LeTableauDeCellules{5, 1};
    Conf_segment = LeTableauDeCellules{6, 1};
end
