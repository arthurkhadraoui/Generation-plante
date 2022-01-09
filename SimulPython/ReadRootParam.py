import csv

def ReadRootParam():
    paramroot=[]
    with open(r"Conf_racine_primaire_001.csv",
              newline='') as csvfile:
        params = csv.reader(csvfile, delimiter=';', quotechar='|')
        for row in params:
            paramroot.append(float(row[0]))
    return paramroot[0],paramroot[1], paramroot[2],paramroot[3]