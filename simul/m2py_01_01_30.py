#!/usr/bin/env python3
# -*- coding: utf-8 -*-
""" Convertir un fichier MatLab en Python"""

import datetime
import time

# nom fichier #
FI_LECTURE = "FonctionTracerUnSegment.m"
# nom fichier #

print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
DEBUT_CHRONO = time.time()

print("Debut")
print()

LA_DATE = datetime.datetime.today().strftime('%Y-%m-%d')

# debut traitement fichier #

print(FI_LECTURE)

# pour commentaire entete fichier
FI_ECRITURE = FI_LECTURE.replace(".m", ".py")

NOM_FI = FI_LECTURE.replace(".m", "")

# numpy
BESOIN_DE_NUMPY = False

# matplotlib
BESOIN_DE_MATPLOTLIB = False

# fonction
EST_FONCTION = True

with open(FI_LECTURE, "r") as FiLecture, open(FI_ECRITURE, "w") as FiEcriture:
    # ajout sheban linux et python 3
    FiEcriture.write("#!/usr/bin/env python3" + "\n")
    # 1 ligne blanche apres
    FiEcriture.write("# -*- coding: utf-8 -*-" + "\n\n")

    # ajout nom fichier + 1 ligne blanche apres
    FiEcriture.write('"""' + FI_ECRITURE + '"""' + "\n\n")

    # lib scientifiques
    if BESOIN_DE_NUMPY:
        FiEcriture.write("import numpy as np" + "\n")

    if BESOIN_DE_MATPLOTLIB:
        FiEcriture.write("import matplotlib.pyplot as plt" + "\n")

    if EST_FONCTION:
        FiEcriture.write("from XXXXXX import *" + "\n")

    # lecture fichier
    for ligne in FiLecture:
        # suppression commentaire pour nom fichier matlab
        if "%%%%%%\n" in ligne:
            ligne = ligne.replace("%%%%%%\n", "")

        # suppression nom fichier matlab
        if FI_LECTURE in ligne:
            ligne = ligne.replace(ligne, "")

        # suppression nom fichier matlab pour fonction
        if "%" in ligne:
            if ".m" in ligne:
                ligne = ligne.replace(ligne, "")

        # commentaire
        if "%" in ligne:
            ligne = ligne.replace("%", "#")

        # cmd effacement + vidage + suppression saut ligne
        if "close all\n" in ligne:
            ligne = ligne.replace("close all\n", "")

        if "clear all\n" in ligne:
            ligne = ligne.replace("clear all\n", "")

        if "clear\n" in ligne:
            ligne = ligne.replace("clear\n", "")

        if "clc\n" in ligne:
            ligne = ligne.replace("clc\n", "")

        if "tic;\n" in ligne:
            ligne = ligne.replace("tic;\n", "")

        if "LeTemps = toc;\n" in ligne:
            ligne = ligne.replace("LeTemps = toc;\n", "")

        # fin de ligne
        if ";" in ligne:
            ligne = ligne.replace(";\n", "\n")

        # num2str
        if "num2str" in ligne:
            ligne = ligne.replace("),", ",")
            ligne = ligne.replace("num2str(", "")
            ligne = ligne.replace("[", "")
            # ligne = ligne.replace("])", "")
            ligne = ligne.replace("])", ")")

        # disp
        if "disp" in ligne:
            ligne = ligne.replace("disp(' ')", "print()")
            ligne = ligne.replace("disp", 'print')
            ligne = ligne.replace("newline", "")
            ligne = ligne.replace("')", '")')
            ligne = ligne.replace("('", '("')
            ligne = ligne.replace("''", "'")

        # print
        if "print" in ligne:
            ligne = ligne.replace("',", '",')
            ligne = ligne.replace(", '", ', "')
            ligne = ligne.replace(",'", ', "')

        # exponentiation
        if "^" in ligne:
            ligne = ligne.replace("^", "**")

        # operateur logique
        if "~=" in ligne:
            ligne = ligne.replace("~=", "!=")

        if "~ " in ligne:
            ligne = ligne.replace("~", "not")

        if "~" in ligne:
            ligne = ligne.replace("~", "not ")

        if "&&" in ligne:
            ligne = ligne.replace("&&", "and")

        if "||" in ligne:
            ligne = ligne.replace("||", "or")

        if "&" in ligne:
            ligne = ligne.replace("&", "and")

        if "&&" in ligne:
            ligne = ligne.replace("|", "or")

        # fonction booleenne
        if "logical" in ligne:
            ligne = ligne.replace("logical", "bool")

        # if et non elseif + fin de ligne :
        if "if " in ligne:
            if "elseif" not in ligne:
                ligne = ligne.replace("\n", ":\n")

        # elseif + fin de ligne :
        if "elseif" in ligne:
            ligne = ligne.replace("elseif", "elif")
            ligne = ligne.replace("\n", ":\n")

        # else + fin de ligne :
        if "else" in ligne:
            ligne = ligne.replace("\n", ":\n")

        # supression ligne end
        if "end" in ligne:
            ligne = ligne.replace("end\n", "")

        # input ajout transtypage integer
        if "input" in ligne:
            ligne0 = ligne[:ligne.find("=") - 1]
            ligne1 = ligne0.strip()
            ligne2 = ligne0 + " = int(" + ligne1 + ")"
            ligne3 = ligne + ligne2 + "\n"
            ligne = ligne.replace(ligne, ligne3)

        # strcmp
        if "strcmp" in ligne:
            ligne = ligne.replace("strcmp", "")
            ligne = ligne.replace(",", " == ")

        # mod
        if "mod" in ligne:
            ligne = ligne.replace("mod", "")
            ligne = ligne.replace(",", " % ")

        # for
        if "for" in ligne:
            ligne = ligne.replace("=", "in range(")
            ligne = ligne.replace(":", ", ")
            ligne = ligne.replace("\n", "):\n")
            ligne = ligne.replace("in range( 1", "in range(0")

        # while
        if "while" in ligne:
            ligne = ligne.replace("\n", ":\n")

        # numpy
        if "zeros" in ligne:
            ligne = ligne.replace("zeros(1, ", "np.zeros(")
            ligne = ligne.replace(")", ", dtype=int)")

        # 1ier indice tableau => 0
        if " in range( 1," in ligne:
            ligne = ligne.replace("in range( 1", " in range(0")

        # acces au valeur du tableau
        if "LeTableau(i)" in ligne:
            ligne = ligne.replace("LeTableau(i)", "LeTableau[i]")

        # tableau vide
        if "LeTableau = []" in ligne:
            ligne1 = "NbValeurs = 8"
            ligne01 = "LeTableau = []"
            ligne02 = "LeTableau = np.zeros(NbValeurs, dtype=int)"
            ligne2 = ligne.replace(ligne01, ligne02)
            ligne3 = ligne1 + "\n" + ligne2
            ligne = ligne.replace(ligne, ligne3)

        # tableau vide
        if "LeTableau = [" in ligne:
            ligne = ligne.replace("LeTableau = [", "LeTableau = np.array([[")
            ligne = ligne.replace(";", "]")
            position = ligne.index("=") + 2
            fin = ligne[position: len(ligne)]
            fin = fin.replace(" ", ", ")
            fin = fin.replace("\n", "")
            debut = ligne[0: position]
            ligne = debut + fin + "])"
            ligne = ligne.replace("], ", "], [")

        # affectation  tableau 1 D
        if "LeTableau(jligne" in ligne:
            ligne = ligne.replace("LeTableau(jligne", "LeTableau[jligne")
            ligne = ligne.replace(", icolonne)", ", icolonne]")

        # affectation tableau
        if "LeTableau(icolonne" in ligne:
            ligne = ligne.replace("LeTableau(icolonne", "LeTableau[icolonne")
            ligne = ligne.replace(", jligne)", ", jligne]")

        if "LaTailleDuTableau = size(LeTableau)" in ligne:
            ligne01 = "LaTailleDuTableau = size(LeTableau)"
            ligne02 = "LaTailleDuTableau = LeTableau.shape"
            ligne = ligne.replace(ligne01, ligne02)

        if "NbLignes = LaTailleDuTableau(1, 1)" in ligne:
            ligne01 = "NbLignes = LaTailleDuTableau(1, 1)"
            ligne02 = "NbLignes = LaTailleDuTableau[0]"
            ligne = ligne.replace(ligne01, ligne02)

        if "NbColonnes = LaTailleDuTableau(1, 2)" in ligne:
            ligne01 = "NbColonnes = LaTailleDuTableau(1, 2)"
            ligne02 = "NbColonnes = LaTailleDuTableau[1]"
            ligne = ligne.replace(ligne01, ligne02)

        if "LaMatrice = zeros(NbLignes, NbColonnes)" in ligne:
            ligne01 = "LaMatrice = zeros(NbLignes, NbColonnes)"
            ligne02 = "LaMatrice = np.zeros((NbLignes, NbColonnes), dtype=int)"
            ligne = ligne.replace(ligne01, ligne02)

        # affectation  tableau 1 D
        if "LaMatrice(jligne" in ligne:
            ligne = ligne.replace("LaMatrice(jligne", "LaMatrice[jligne")
            ligne = ligne.replace(", icolonne)", ", icolonne]")

        if "randi(" in ligne:
            ligne = ligne.replace("randi(", "np.random.randint(")

        if "rand(" in ligne:
            ligne = ligne.replace("rand(", "np.random.rand(")

        if "numel" in ligne:
            ligne = ligne.replace("numel", "size")
            # ligne = ligne.replace("numel", "np.size")


        # function + fin de ligne :
        if "function" in ligne:
            if "=" in ligne:
                if "[" and "]" in ligne:
                    ParametresDebut = ligne.index("[") + 1
                    ParametresFin = ligne.index("]")
                else:
                    ParametresDebut = ligne.index("function") + 9
                    ParametresFin = ligne.index("=")
                Parametres = ligne[ParametresDebut:ParametresFin]
                ParametresReturn = " return " + Parametres
                position = ligne.index("=") + 2
                fin = ligne[position: len(ligne)]
                debut = "def "
                ligne = debut + fin
                ligne = ligne.replace("\n", ":\n")
                ligne1 = ligne + ParametresReturn
                ligne = ligne.replace(ligne, ligne1 + "\n")
            else:
                ligne = ligne.replace("function", "def")
                ligne = ligne.replace("\n", ":\n")

        # ecriture de la ligne dans le fichier
        FiEcriture.write(ligne)

# fin traitement fichiers #

CHRONO = round((time.time() - DEBUT_CHRONO), 3)

print()
print("Temps d'execution : %s secondes" % CHRONO)

print()
print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

print()
print("Fin")
