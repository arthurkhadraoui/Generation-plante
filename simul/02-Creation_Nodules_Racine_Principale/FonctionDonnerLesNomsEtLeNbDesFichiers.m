
function [LaListeDesFichiers, LeNbDeFichiers] = FonctionDonnerLesNomsEtLeNbDesFichiers(LePatronDeFichier)
    % récupère un tableau de structure
    %[LeCheminDeSVG] = FonctionDonnerRepertoiredeSauvegarde();
    %LaStructure = dir([LeCheminDeSVG, LePatronDeFichier]);
    LaStructure = dir(LePatronDeFichier);
    % filter pour ne garder que les noms de fichier
    LaStructure = LaStructure(~cell2mat({LaStructure( : ).isdir}));
    % transformer en un tableau de cellules texte
    LaListeDesFichiers = {LaStructure( : ).name};
    % Le nombre de fichier dans la liste
    LeNbDeFichiers = size(LaListeDesFichiers, 2);
end
