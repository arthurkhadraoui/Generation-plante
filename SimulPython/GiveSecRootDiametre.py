import random
import numpy as np

from ReadRootParam import ReadRootParam
def GiveRootSecDiametre(Matrice,MatriceLog,largeurRacine):
    LongueurRacine =len(MatriceLog)
    #VariationDiametre = round(random.random()*2)
    LargeurDebutRacine = largeurRacine
    LargeurFinRacine = 1
    LigneorigineRacine = MatriceLog[0][0]
    ColonneorigineRacine = MatriceLog[0][1]
    b=LargeurDebutRacine
    a=(LargeurFinRacine-b)/LongueurRacine

    MatriceLog=np.append(MatriceLog,np.zeros((LongueurRacine,2)),axis=1)

    for i in range(0,LongueurRacine):
        diametre=(a*i)+b
        rayon=round(diametre/2)
        for j in range(int(MatriceLog[i][1])-rayon,int(MatriceLog[i][1])+rayon+1):
            Matrice[int(MatriceLog[i][0])][j]=255
    return Matrice