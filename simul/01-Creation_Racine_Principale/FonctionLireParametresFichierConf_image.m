
function [NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image()
    % fichier
    [Conf_image] = FonctionLireNomsFichiersConf();

    MatriceInfo = csvread(Conf_image);

    % lecture
    NbLignes = MatriceInfo(1);
    NbColonnes = MatriceInfo(2);
    NbImages = MatriceInfo(3);
end
