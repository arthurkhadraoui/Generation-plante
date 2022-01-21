from random import random

from ReadImageParam import ReadImageParam
from ReadSegmentParam import ReadSegmentParam
from BaseArrayGeneration import BaseArrayGeneration
from GiveSecSegmentCoordinates import GiveSecSegmentCoordinates
from TraceSegment import TraceSegment
import numpy as np

def GiveSecAxis(x1,y1,Matrice,MatriceLog):
    imageParam = ReadImageParam()
    segmentParam = ReadSegmentParam()

    MatriceLogSec = [[0, 0]];
    margin = 0.01

    maxlgth = round((segmentParam[1]-((1-(segmentParam[1]-margin))*random()))*imageParam[0])
    randside = random()
    if randside < 0.5:
        randside = -1
    else:
        randside = 1

    while True:


        (x2,y2,angleRad,segLength,angleDeg) = GiveSecSegmentCoordinates(x1,y1)
        y2=y1+randside*(y1-y2)
        (Matrice,MatriceLogSec,x1Fin,y1Fin) = TraceSegment(Matrice,MatriceLogSec,x1,y1,x2,y2)

        x1=x1Fin
        y1=y1Fin

        if y1Fin>maxlgth:
            y1Fin=maxlgth
            break
        if y1Fin<imageParam[0]-maxlgth:
            y1Fin = imageParam[0]-maxlgth
            break
        if x1Fin < 1 :
            x1Fin=1
            break
        if x1Fin>imageParam[1]:
            x1Fin=imageParam[1]
            break
    MatriceLog=np.delete(MatriceLog, 0, axis=0)
    return Matrice
