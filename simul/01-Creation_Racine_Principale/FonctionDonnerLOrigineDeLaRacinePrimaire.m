
function [LigneOrigine, ColonneOrigine] = FonctionDonnerLOrigineDeLaRacinePrimaire()

    [NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image();
    [PourcentageOrigineMini, PourcentageVariationOrigineMini, ] = FonctionLireParametresFichierConf_Conf_origine_primaire();

    LigneOrigine = 1;
    ColonneOrigine = round(NbColonnes * ( PourcentageOrigineMini + (rand() * PourcentageVariationOrigineMini) ) );
end
