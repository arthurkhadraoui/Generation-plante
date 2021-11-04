
function [LeCheminDeSVG] = FonctionDonnerRepertoiredeSauvegarde()
    LeCheminCourant = pwd;
    LeChemin = 'data';
    LeCheminDeSVG = [LeCheminCourant, '/', LeChemin, '/'];
end
