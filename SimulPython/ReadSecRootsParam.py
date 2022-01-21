import csv


def ReadSecRootsParam():
    paramsec = []
    with open(r"Conf_racines_secondaires.csv",
              newline='') as csvfile:
        params = csv.reader(csvfile, delimiter=';', quotechar='|')
        for row in params:
            paramsec.append(float(row[0]))
    return int(paramsec[0]), int(paramsec[1]), int(paramsec[2]), int(paramsec[3])
