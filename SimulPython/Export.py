import numpy as np
import cv2
def export(Matrice,MatriceLog):
    np.savetxt('Log.csv',MatriceLog,delimiter=',')
    cv2.imwrite("img.png",Matrice)