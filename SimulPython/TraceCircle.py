import numpy as np


def TraceCircle(Diametre,CentreLigne,CentreColonne,Matrice):
    LogCercle = []
    DiamCercle = round(Diametre-2)
    Rayon=round(Diametre/2)-1
    if (CentreColonne>Rayon) and (CentreLigne>Rayon):
        for i in range(CentreColonne-Rayon,CentreColonne+Rayon+1):
            for j in range(CentreLigne - Rayon, CentreLigne + Rayon + 1):
                if (np.sqrt((i-CentreColonne)*(i-CentreColonne)+(j-CentreLigne)*(j-CentreLigne))):
                    Matrice[j][i]=255
                    LogCercle = np.append(LogCercle,[[j,i]])
    return Matrice,LogCercle