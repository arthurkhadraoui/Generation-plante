from random import random

import numpy as np

from TraceCircle import TraceCircle


def TraceNodule(Diametre, centreLigne, centreColonne, Matrice, Angle, DecalageLigne, DecalageColonne):
    CoefDecalageColonneExterieur = 2.75
    DecalageColonneExterieur = round((Diametre / CoefDecalageColonneExterieur) * np.sin(Angle))
    CoefDiametreExterieur = 0.80
    DiametreExterieur = round(Diametre * CoefDiametreExterieur)

    CoefDecalageColonneInterieur = 4.2
    DecalageColonneInterieur = round((Diametre / CoefDecalageColonneInterieur) * np.sin(Angle))
    CoefDiametreInterieur = 0.9
    DiametreInterieur = round(Diametre * CoefDiametreInterieur)

    DecalageLigneExterieur = round((Diametre / CoefDecalageColonneExterieur) * np.cos(Angle))
    DiametreExterieur = round(Diametre * CoefDiametreExterieur)

    DecalageLigneInterieur = round((Diametre / CoefDecalageColonneInterieur) * np.cos(Angle))
    DiametreInterieur = round(Diametre * CoefDiametreInterieur)

    DiametreCentral = Diametre
    CoefDecalageAxeAlea = 0.25
    DecalageAxeAlea = round((2 * Diametre * CoefDecalageAxeAlea * random()) - (Diametre * CoefDecalageAxeAlea))

    LogNodule = []

    #Diametre Exterieur
    Matrice,MatriceLogCercle = TraceCircle(DiametreExterieur, centreLigne - DecalageLigneExterieur + DecalageLigne, centreColonne - DecalageColonneExterieur + DecalageAxeAlea + DecalageColonne, Matrice)
    LogNodule = np.append(LogNodule,MatriceLogCercle)

    # Diametre Interieur
    Matrice, MatriceLogCercle = TraceCircle(DiametreInterieur, centreLigne - DecalageLigneInterieur + DecalageLigne, centreColonne - DecalageColonneInterieur + DecalageAxeAlea + DecalageColonne, Matrice)
    LogNodule = np.append(LogNodule, MatriceLogCercle)

    # Diametre Central
    Matrice, MatriceLogCercle = TraceCircle(DiametreCentral, centreLigne + DecalageLigne, centreColonne + DecalageAxeAlea  + DecalageColonne, Matrice)
    LogNodule = np.append(LogNodule, MatriceLogCercle)
    # Diametre Interieur
    Matrice, MatriceLogCercle = TraceCircle(DiametreInterieur, centreLigne + DecalageLigneInterieur + DecalageLigne, centreColonne + DecalageColonneInterieur + DecalageAxeAlea + DecalageColonne, Matrice)
    LogNodule = np.append(LogNodule, MatriceLogCercle)
    # Diametre Exterieur
    Matrice, MatriceLogCercle = TraceCircle(DiametreExterieur, centreLigne + DecalageLigneExterieur + DecalageLigne, centreColonne + DecalageColonneExterieur + DecalageAxeAlea  + DecalageColonne, Matrice)
    LogNodule = np.append(LogNodule, MatriceLogCercle)

    LogNodule = np.unique(LogNodule)

    return Matrice, LogNodule
