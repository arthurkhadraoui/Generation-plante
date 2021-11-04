
function [PourcentageOrigineMini, PourcentageVariationOrigineMini] = FonctionLireParametresFichierConf_Conf_origine_primaire()
    % fichier

    %[PourcentageOrigineMini PourcentageVariationOrigineMini] = FonctionLireParametresFichierConf_racine_primaire();
    [Conf_origine_primaire] = FonctionLireNomsFichiersConf();
    MatriceInfo = csvread('Conf_origine_primaire_001.csv');
    % lecture
    PourcentageOrigineMini = MatriceInfo(1);
    PourcentageVariationOrigineMini = MatriceInfo(2);
end
