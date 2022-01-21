from ReadImageParam import ReadImageParam
from GiveRoot import GiveRoot
from GiveRootDiametre import GiveRootDiametre
from traceSecRoots import TraceSecRoots
import cv2

from TraceNodules import TraceNodules

def MainBranch():

    imageparam = ReadImageParam()

    Matrice,MatriceLog=GiveRoot()

    Matrice,MatriceLog=GiveRootDiametre(Matrice,MatriceLog)
    Matrice, MatriceLogNodules = TraceNodules(Matrice,MatriceLog,15)

    Matrice = TraceSecRoots(Matrice,MatriceLog, 10)
    return Matrice,MatriceLog

