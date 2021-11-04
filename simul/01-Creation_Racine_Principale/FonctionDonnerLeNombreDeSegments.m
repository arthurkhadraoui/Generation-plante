
function [NombreDeSegments] = FonctionDonnerLeNombreDeSegments()

    [CoefLongueurMaxiDuSegment LongueurMaxiDuSegment NombreMaxiDuSegment] = FonctionLireParametresFichierConf_Segment();

    NombreDeSegments = round(rand() * NombreMaxiDuSegment);
end
