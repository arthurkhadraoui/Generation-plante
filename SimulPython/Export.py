import numpy as np
import cv2
def export(Matrice,MatriceLog,NomImage,NomLog):
    np.savetxt(NomLog,MatriceLog,delimiter=',')
    cv2.imwrite(NomImage,Matrice)