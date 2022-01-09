import csv

def ReadImageParam():
    paramimg=[]
    with open(r"Conf_image_001.csv",
              newline='') as csvfile:
        params = csv.reader(csvfile, delimiter=';', quotechar='|')
        for row in params:
            paramimg.append(int(row[0]))
    return paramimg[0],paramimg[1],paramimg[2]

