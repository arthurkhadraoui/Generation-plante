from random import random

import numpy as np
from ReadSegmentParam import ReadSegmentParam


def GiveAngle():
    AngleAleaDeg = ReadSegmentParam()[0] - ((2 * ReadSegmentParam()[0]) * random())
    AngleAleaRad = AngleAleaDeg * np.pi / 180
    return AngleAleaRad, AngleAleaDeg
