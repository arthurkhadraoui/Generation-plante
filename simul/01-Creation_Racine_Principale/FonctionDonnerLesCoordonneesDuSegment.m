
function [x2, y2, AngleAleaEnRadians, LaLongueurDuSegment AngleAleaEnDegres] = FonctionDonnerLesCoordonneesDuSegment(x1, y1)

    [AngleAleaEnRadians AngleAleaEnDegres] = FonctionDonnerUnAngle();
    [LaLongueurDuSegment] = FonctionDonnerUneLongueurPourLeSegment();

    x2 = round(cos(AngleAleaEnRadians) * LaLongueurDuSegment) + x1; %adjacent
    y2 = round(sin(AngleAleaEnRadians) * LaLongueurDuSegment) + y1; %opposé
end
