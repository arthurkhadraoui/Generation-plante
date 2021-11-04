
function [AngleMaxiEnDegres CoefLongueurMaxiDuSegment LongueurMaxiDuSegment NombreMaxiDuSegment] = FonctionLireParametresFichierConf_segment()
    % fichier
    [Conf_image, Conf_nodule, Conf_numero_maxi_fichier, Conf_racine_primaire, Conf_racine_secondaire Conf_segment] = FonctionLireNomsFichiersConf();

    MatriceInfo = csvread(Conf_segment);

    % lecture
    AngleMaxiEnDegres = MatriceInfo(1);
    CoefLongueurMaxiDuSegment = MatriceInfo(2);
    LongueurMaxiDuSegment = MatriceInfo(3);
    NombreMaxiDuSegment = MatriceInfo(4);
end
