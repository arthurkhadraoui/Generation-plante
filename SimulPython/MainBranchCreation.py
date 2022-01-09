from ReadImageParam import ReadImageParam
from GiveRoot import GiveRoot
from GiveRootDiametre import GiveRootDiametre
from Export import export
import cv2

imageparam = ReadImageParam()

Matrice,MatriceLog=GiveRoot()
#cv2.imwrite("img.png",Matrice)
Matrice,MatriceLog=GiveRootDiametre(Matrice,MatriceLog)
export(Matrice,MatriceLog)
