
function [valeurMax] = FonctionLireParametresFichierConf_NumeroMaxiFichier()
    % fichier
    [Conf_numero_maxi_fichier] = FonctionLireNomsFichiersConf();
    MatriceInfo = csvread(Conf_numero_maxi_fichier);
    % lecture
    valeurMax = MatriceInfo(1);
end
