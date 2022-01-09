from GivePrimaryRoot import GivePrimaryRoot
from GiveAxis import GiveAxis


def GiveRoot():
    (LigneOrigine, ColonneOrigine) = GivePrimaryRoot()
    Matrice,MatriceLog = GiveAxis(LigneOrigine, ColonneOrigine)
    return Matrice,MatriceLog
