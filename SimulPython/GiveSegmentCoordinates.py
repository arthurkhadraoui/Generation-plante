import numpy as np
from GiveAngle import GiveAngle
from GiveSegmentLength import GiveSegmentLength

def GiveSegmentCoordinates(LigneO,ColonneO):
    return round(np.cos(GiveAngle(0))*GiveSegmentLength())+LigneO, round(np.sin(GiveAngle(0))*GiveSegmentLength())+ColonneO