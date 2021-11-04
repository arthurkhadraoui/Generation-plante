
function [LaLongueurDuSegment] = FonctionDonnerUneLongueurPourLeSegment()

    [NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image();
    [AngleMaxiEnDegres CoefLongueurMaxiDuSegment LongueurMaxiDuSegment NombreMaxiDuSegment] = FonctionLireParametresFichierConf_segment();

    LaLongueurDuSegment = round( LongueurMaxiDuSegment * rand() );

    if LaLongueurDuSegment == 0
        LaLongueurDuSegment = 1;
    end
end
