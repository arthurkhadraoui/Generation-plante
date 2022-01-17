from random import random

import numpy as np

from TraceNodule import TraceNodule


def TraceNodules(Matrice, MatriceLog,nbNodules):
    for i in range(nbNodules):
        diametre = 12 + round(random() *4)
        longueurNodule = round((2.8 * diametre)/2)
        indiceLigne = 100 + i*40
        AxeLigne1 = MatriceLog[indiceLigne][0]
        AxeColonne = MatriceLog[indiceLigne][1]
        DiamColonne = MatriceLog[indiceLigne][2]
        finAxeLigne = round (indiceLigne+longueurNodule)
        AxeLigne2 = MatriceLog[finAxeLigne][0]
        AxeColonne2 = MatriceLog[finAxeLigne][1]
        DiamMinColonne2 = MatriceLog[finAxeLigne][2]
        DiamMaxColonne2 = MatriceLog[indiceLigne + longueurNodule][3]
        oppose=(DiamMinColonne2-DiamColonne)*(DiamMinColonne2-DiamColonne)
        logAdjacent = AxeLigne2 - AxeLigne1
        Adjacent = (AxeLigne2 - AxeLigne1)*(AxeLigne2 - AxeLigne1)

        tangentAdj = oppose/Adjacent
        angle = np.arctan(tangentAdj)
        angleDegre = angle * 180/np.pi

        centreLigne = round((AxeLigne1+AxeColonne2)/2)
        centreColonne = round((DiamColonne+DiamMinColonne2)/2)

        DecalageLigne = 0
        DecalageColonne = 0

        Matrice,MatriceLogNodules = TraceNodule(diametre,centreLigne,centreColonne,Matrice,angle,DecalageLigne,DecalageColonne)

        DecalageLigne = 5
        DecalageColonne = round(diametre * 0.8)

        Matrice, MatriceLogNodules1 = TraceNodule(diametre, centreLigne, centreColonne, Matrice, angle, DecalageLigne, DecalageColonne)

        MatriceLogNodules = np.append(MatriceLogNodules,MatriceLogNodules1)

        return Matrice,MatriceLogNodules
