from ReadImageParam import ReadImageParam
from GiveRoot import GiveRoot
from GiveRootDiametre import GiveRootDiametre
from traceSecRoots import TraceSecRoots
import cv2

from TraceNodules import TraceNodules

def MainBranch():


    Matrice,MatriceLog=GiveRoot()

    Matrice,MatriceLog=GiveRootDiametre(Matrice,MatriceLog)
    Matrice, MatriceLogNodules = TraceNodules(Matrice,MatriceLog,15)

    Matrice = TraceSecRoots(Matrice,MatriceLog)
    return Matrice,MatriceLog

