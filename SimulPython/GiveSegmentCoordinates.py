import numpy as np
from GiveAngle import GiveAngle
from GiveSegmentLength import GiveSegmentLength

def GiveSegmentCoordinates(LigneO,ColonneO):

    segLength = GiveSegmentLength()

    angleRad = GiveAngle()[0]
    angleDeg = GiveAngle()[1]

    return round(np.cos(GiveAngle()[0])*GiveSegmentLength())+LigneO, round(np.sin(GiveAngle()[0])*GiveSegmentLength())+ColonneO,angleRad,segLength,angleDeg