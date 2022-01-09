import random
import numpy as np

from ReadRootParam import ReadRootParam
def GiveRootDiametre(Matrice,MatriceLog):
    paramPrimaryRoot = ReadRootParam()
    LongueurRacine =len(MatriceLog)
    VariationDiametre = round(random.random()*2)
    LargeurDebutRacine = paramPrimaryRoot[2]-VariationDiametre
    LargeurFinRacine = paramPrimaryRoot[3]-VariationDiametre
    b=LargeurDebutRacine
    a=(LargeurFinRacine-b)/LongueurRacine

    MatriceLog=np.append(MatriceLog,np.zeros((LongueurRacine,2)),axis=1)

    for i in range(1,LongueurRacine):
        diametre=(a*i)+b
        rayon=round(diametre/2)
        MatriceLog[i][2]=MatriceLog[i][1]-rayon
        MatriceLog[i][3] = MatriceLog[i][1] + rayon
        for j in range(int(MatriceLog[i][1])-rayon,int(MatriceLog[i][1])+rayon+1):
            Matrice[int(MatriceLog[i][0])][j]=255
    return Matrice,MatriceLog