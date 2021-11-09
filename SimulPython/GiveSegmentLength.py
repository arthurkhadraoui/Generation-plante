from random import random
from ReadSegmentParam import ReadSegmentParam


def GiveSegmentLength():
    if ReadSegmentParam(2) == 0:
        return 1
    else:
        return round(ReadSegmentParam(2) * random())
