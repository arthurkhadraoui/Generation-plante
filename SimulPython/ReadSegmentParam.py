import csv

def ReadSegmentParam():
    paramseg=[]
    with open(r"Conf_segment_001.csv",
              newline='') as csvfile:
        params = csv.reader(csvfile, delimiter=';', quotechar='|')
        for row in params:
            paramseg.append(row[0])
    return paramseg[0],paramseg[1],paramseg[2],paramseg[3]