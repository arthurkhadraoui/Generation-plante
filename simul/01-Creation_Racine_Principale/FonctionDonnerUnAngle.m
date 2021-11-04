
function [AngleAleaEnRadians AngleAleaEnDegres] = FonctionDonnerUnAngle()

    [AngleMaxiEnDegres CoefLongueurMaxiDuSegment LongueurMaxiDuSegment NombreMaxiDuSegment] = FonctionLireParametresFichierConf_segment();

    CoefDeConversionDeg2Rad = pi() / 180;
    CoefDeConversionRad2Deg = 180 / pi();

    AngleAleaEnRadians = (AngleMaxiEnDegres - ((2 * AngleMaxiEnDegres) * rand())) * CoefDeConversionDeg2Rad;
    AngleAleaEnDegres = AngleAleaEnRadians * CoefDeConversionRad2Deg;
end
