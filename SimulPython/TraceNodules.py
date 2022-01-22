from random import random, randint

import numpy as np

from TraceNodule import TraceNodule

from ReadImageParam import ReadImageParam


def TraceNodules(Matrice, MatriceLog, nbNodules):
    tailleimage = ReadImageParam()[0]


    for i in range(nbNodules):
        longueurRacinePrincipale = len(MatriceLog)
        indiceLigne = 1000 + randint(0,longueurRacinePrincipale-1000)
        if indiceLigne<tailleimage:
            diametre = 30 + round(random() * 4)
            longueurNodule = round((2.8 * diametre) / 2)

            AxeLigne1 = MatriceLog[indiceLigne][0]
            AxeColonne = MatriceLog[indiceLigne][1]
            DiamColonne = MatriceLog[indiceLigne][2]
            finAxeLigne = round(indiceLigne + longueurNodule)
            AxeLigne2 = MatriceLog[finAxeLigne][0]
            AxeColonne2 = MatriceLog[finAxeLigne][1]
            DiamMinColonne2 = MatriceLog[finAxeLigne][2]
            DiamMaxColonne2 = MatriceLog[indiceLigne + longueurNodule][3]
            oppose = (DiamMinColonne2 - DiamColonne) * (DiamMinColonne2 - DiamColonne)
            logAdjacent = AxeLigne2 - AxeLigne1
            Adjacent = (AxeLigne2 - AxeLigne1) * (AxeLigne2 - AxeLigne1)

            tangentAdj = oppose / Adjacent
            angle = np.arctan(tangentAdj)
            angleDegre = angle * 180 / np.pi

            centreLigne = round(AxeLigne1)
            centreColonne = round(AxeColonne)

            DecalageLigne = 0
            DecalageColonne = 0

            Matrice, MatriceLogNodules = TraceNodule(diametre, centreLigne, centreColonne, Matrice, angle, DecalageLigne,
                                                 DecalageColonne)

            DecalageLigne = 5
            DecalageColonne = round(diametre * 0.8)

            Matrice, MatriceLogNodules1 = TraceNodule(diametre, centreLigne, centreColonne, Matrice, angle, DecalageLigne,
                                                  DecalageColonne)

            MatriceLogNodules = np.append(MatriceLogNodules, MatriceLogNodules1)

    return Matrice, MatriceLogNodules
