from random import random

from ReadRootParam import ReadRootParam
from ReadImageParam import ReadImageParam

def GivePrimaryRoot():
    NbColonne = ReadImageParam(1)
    PourcentageOrigineMini = ReadRootParam(0)
    PourcentageVariationMini= ReadRootParam(1)

    LigneOrigine = 1
    ColonneOrigine: int = round(NbColonne*(PourcentageOrigineMini+(random*PourcentageVariationMini)))
    return LigneOrigine,ColonneOrigine
