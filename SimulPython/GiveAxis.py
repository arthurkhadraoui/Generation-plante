from random import random

from ReadImageParam import ReadImageParam
from ReadSegmentParam import ReadSegmentParam
from BaseArrayGeneration import BaseArrayGeneration
from GiveSegmentCoordinates import GiveSegmentCoordinates
from TraceSegment import TraceSegment
import numpy as np

def GiveAxis(x1,y1):
    imageParam = ReadImageParam()
    segmentParam = ReadSegmentParam()

    Matrice = BaseArrayGeneration(imageParam[0],imageParam[1])
    MatriceLog = [[0,0]];

    margin = 0.01

    maxlgth = round((segmentParam[1]-((1-(segmentParam[1]-margin))*random()))*imageParam[0])

    while True:
        (x2,y2,angleRad,segLength,angleDeg) = GiveSegmentCoordinates(x1,y1)
        (Matrice,MatriceLog,x1Fin,y1Fin) = TraceSegment(Matrice,MatriceLog,x1,y1,x2,y2)

        x1=x1Fin
        y1=y1Fin

        if x1Fin>maxlgth:
            x1Fin=maxlgth
            break
        if y1Fin < 1 :
            y1Fin=1
            break
        if y1Fin>imageParam[1]:
            y1Fin=imageParam[1]
            break
    MatriceLog=np.delete(MatriceLog, 0, axis=0)
    return Matrice,MatriceLog
