from ReadImageParam import ReadImageParam
from GiveRoot import GiveRoot
from GiveRootDiametre import GiveRootDiametre
from Export import export
from traceSecRoots import TraceSecRoots
import cv2

from TraceNodules import TraceNodules

imageparam = ReadImageParam()

Matrice,MatriceLog=GiveRoot()
Matrice = TraceSecRoots(Matrice,MatriceLog, 10)
Matrice,MatriceLog=GiveRootDiametre(Matrice,MatriceLog)
Matrice, MatriceLogNodules = TraceNodules(Matrice,MatriceLog,15)

export(Matrice,MatriceLog)
