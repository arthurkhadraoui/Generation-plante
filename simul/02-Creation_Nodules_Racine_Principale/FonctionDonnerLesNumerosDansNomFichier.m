
function [NumFichier] = FonctionDonnerLesNumerosDansNomFichier(Indice)
    [valeurMax] = FonctionLireParametresFichierConf_NumeroMaxiFichier();
    NbChriffesMax = length(num2str(valeurMax));
    zeros = repmat('0', 1, NbChriffesMax - length(num2str(Indice)));
    NumFichier = [zeros, num2str(Indice)];
end
