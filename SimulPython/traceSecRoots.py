from random import random, randint

import numpy as np

from GiveSecAxis import GiveSecAxis
from ReadImageParam import ReadImageParam
from GiveSecRootDiametre import GiveRootSecDiametre
from ReadSecRootsParam import ReadSecRootsParam


def TraceSecRoots(Matrice, MatriceLog):
    tailleimage = ReadImageParam()[0]
    nbRacines, longueurMaxi, diametreMin, inclinaison = ReadSecRootsParam()
    longueurRacinePrincipale = len(MatriceLog)
    for i in range(nbRacines):
        indiceLigne = 1000 + randint(0,longueurRacinePrincipale-1000)
        if indiceLigne<tailleimage:

            AxeLigne1 = int(MatriceLog[indiceLigne][0])
            AxeColonne = int(MatriceLog[indiceLigne][1])
            largeur = MatriceLog[indiceLigne][3]-MatriceLog[indiceLigne][2]

            Matrice,MatriceLogSec = GiveSecAxis(AxeLigne1,AxeColonne,Matrice,MatriceLog)
            Matrice = GiveRootSecDiametre(Matrice,MatriceLogSec,largeur)

    return Matrice
