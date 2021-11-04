
function [PourcentageOrigineMini PourcentageVariationOrigineMini, DiametreMaxRacinePrimaire, DiametreMinRacinePrimaire] = FonctionLireParametresFichierConf_racine_primaire()

    % fichier
    [Conf_image, Conf_nodule, Conf_numero_maxi_fichier, Conf_racine_primaire, Conf_racine_secondaire Conf_segment] = FonctionLireNomsFichiersConf();
    %Conf_racine_primaire = 'Conf_racine_primaire_001.csv';
    MatriceInfo = csvread(Conf_racine_primaire);

    PourcentageOrigineMini = MatriceInfo(1);
    PourcentageVariationOrigineMini = MatriceInfo(2);
    DiametreMaxRacinePrimaire = MatriceInfo(3);
    DiametreMinRacinePrimaire = MatriceInfo(4);

end
