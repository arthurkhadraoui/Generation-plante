
from MainBranchCreation import MainBranch
from Export import export
from ReadImageParam import ReadImageParam

for i in range(ReadImageParam()[2]):
    Matrice,MatriceLog = MainBranch()
    format = ".png"
    nomImage="Img-0"+str(i+1)+format
    nomLog = "Log-0" + str(i+1)
    export(Matrice,MatriceLog,nomImage,nomLog)
    print("Image ",i+1," generée")


