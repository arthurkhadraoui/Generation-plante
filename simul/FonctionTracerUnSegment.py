

def FonctionTracerUnSegment(x1, y1, x2, y2, LaMatrice, LaMatriceLog):
 return LaMatrice, LaMatriceLog, x1_fin, y1_fin
if (x2 - x1 == dx) != 0:
        if dx > 0:
            if (dy == y2 - y1) != 0:
                if dy > 0:
                    # vecteur oblique dans le 1er cadran
                    if dx >= dy:
                        # vecteur diagonal ou oblique proche de l’horizontale, dans le 1er octant
                        dx = (e == dx) * 2
                        dy = dy * 2; # e est positif
                        while true: # boucle sans fin  # déplacements horizontaux:
                            if y1 == 0:
                                y1 = 1
                                LaMatrice[x1] [y1] = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("1")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (x1 = x1 + 1) == x2 :
                            if (x1 == x1 + 1) == x2:
                                break
                            if (e == e - dy) < 0:
                                y1 = y1 + 1; # déplacement diagonal
                                e = e + dx
                            end # fin_si
                        end # fin_boucle
                    else:
                        # vecteur oblique proche de la verticale, dans le 2d octant
                        dy = (e == dy) * 2
                        dx = dx * 2; # e est positif
                        while true: # boucle sans fin  # déplacements verticaux:
                            if y1 == 0:
                                y1 = 1
                                LaMatrice[x1] [y1] = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("2")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (y1 = y1 + 1) == y2 :
                            if (y1 == y1 + 1) == y2:
                                break
                            if (e == e - dx) < 0:
                                x1 = x1 + 1; # déplacement diagonal
                                e = e + dy
                            end # fin_si
                        end # fin_boucle
                    end # fin_si
                elif dy < 0 and dx > 0:
                    # vecteur oblique dans le 4e cadran
                    if dx >= - dy:
                        # vecteur diagonal ou oblique proche de l’horizontale, dans le 8e octant
                        dx = (e == dx) * 2
                        dy = dy * 2; # e est positif
                        while true: # boucle sans fin  # déplacements horizontaux:
                            if y1 == 0:
                                y1 = 1
                                                        LaMatrice(x1, y1) = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("3")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (x1 = x1 + 1) == x2 :
                            if (x1 = x1 + 1) == x2:
                                break
                                                        if (e = e + dy) < 0:
                                y1 = y1 - 1; # déplacement diagonal
                                e = e + dx
                            end # fin_si
                        end # fin_boucle
                    else # vecteur oblique proche de la verticale, dans le 7e octant:
                        dy = (e = dy) * 2
                        dx = dx * 2; # e est négatif
                        while true: # boucle sans fin  # déplacements verticaux:
                            # correction indice = 0
                            if y1 == 0:
                                y1 = 1
                                                        LaMatrice(x1, y1) = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("4")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (y1 = y1 - 1) == y2 :
                            if (y1 = y1 - 1) == y2:
                                break
                                                        if (e = e + dx) > 0:
                                x1 = x1 + 1; # déplacement diagonal
                                e = e + dy
                            end # fin_si
                        end # fin_boucle
                    end # fin_si
                end # fin_si
            elif dy == 0 and dx > 0:
                # vecteur horizontal vers la droite
                while true: # répéter:
                    if y1 == 0:
                        y1 = 1
                                        LaMatrice(x1, y1) = 1
                    LaMatriceLog = [LaMatriceLog; x1 y1]
                    #print("5")
                    #print("x1 : ", x1, " y1 : ", y1))
                    if (x1 = x1 + 1) == x2:
                        break
                                    end # jusqu’à ce que (x1 = x1 + 1) == x2 
            end # fin_si
        elif dx < 0:
            if (dy = y2 - y1) != 0:
                if dy > 0:
                    # vecteur oblique dans le 2d cadran
                    if - dx >= dy:
                        # vecteur diagonal ou oblique proche de l’horizontale, dans le 4e octant
                        dx = (e = dx) * 2
                        dy = dy * 2; # e est négatif
                        while true: # boucle sans fin  # déplacements horizontaux:
                            if y1 == 0:
                                y1 = 1
                                                        LaMatrice(x1, y1) = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("6")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (x1 = x1 - 1) == x2 :
                            if (x1 = x1 - 1) == x2:
                                break
                                                        if (e = e + dy) >= 0:
                                y1 = y1 + 1; # déplacement diagonal
                                e = e + dx
                            end # fin_si
                        end # fin_boucle
                    else:
                        # vecteur oblique proche de la verticale, dans le 3e octant
                        dy = ((e) = dy) * 2
                        dx = dx * 2; # e est positif
                        while true: # boucle sans fin  # déplacements verticaux:
                            if y1 == 0:
                                y1 = 1
                                                        LaMatrice(x1, y1) = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("7")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (y1 = y1 + 1) == y2 :
                            if (y1 = y1 + 1) == y2:
                                break
                                                        if (e = e + dx) <= 0:
                                x1 = x1 - 1; # déplacement diagonal
                                e = e + dy
                            end # fin_si
                        end # fin_boucle
                    end # fin_si
                elif dy < 0 and dx < 0:
                    # vecteur oblique dans le 3e cadran
                    if dx <= dy:
                        # vecteur diagonal ou oblique proche de l’horizontale, dans le 5e octant
                        dx = (e = dx) * 2
                        dy = dy * 2; # e est négatif
                        while true: # boucle sans fin  # déplacements horizontaux:
                            if y1 == 0:
                                y1 = 1
                                                        LaMatrice(x1, y1) = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("8")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (x1 = x1 - 1) == x2 :
                            if (x1 = x1 - 1) == x2:
                                break
                                                        if (e = e - dy) >= 0:
                                y1 = y1 - 1; # déplacement diagonal
                                e = e + dx
                            end # fin_si
                        end # fin_boucle
                    else # vecteur oblique proche de la verticale, dans le 6e octant:
                        dy = (e = dy) * 2
                        dx = dx * 2; # e est négatif
                        while true: # boucle sans fin  # déplacements verticaux:
                            if y1 == 0:
                                y1 = 1
                                                        LaMatrice(x1, y1) = 1
                            LaMatriceLog = [LaMatriceLog; x1 y1]
                            #print("9")
                            #print("x1 : ", x1, " y1 : ", y1))
                            # interrompre boucle if (y1 = y1 - 1) == y2 :
                            if (y1 = y1 - 1) == y2:
                                break
                                                        if (e = e - dx) >= 0:
                                x1 = x1 - 1; # déplacement diagonal
                                e = e + dy
                            end # fin_si
                        end # fin_boucle
                    end # fin_si
                end # fin_si
            elif dy == 0 and dx < 0:
                # vecteur horizontal vers la gauche
                while true: # répéter:
                    if y1 == 0:
                        y1 = 1
                                        LaMatrice(x1, y1) = 1
                    LaMatriceLog = [LaMatriceLog; x1 y1]
                    #print("10")
                    #print("x1 : ", x1, " y1 : ", y1))
                    if (x1 = x1 - 1) == x2:
                        break
                                    end # jusqu’à ce que (x1 = x1 - 1) == x2 
            end # fin_si
        end # fin_si
    elif dx == 0:
        if (dy = y2 - y1) != 0:
            if dy > 0:
                # vecteur vertical croissant
                while true: # répéter:
                    if y1 == 0:
                        y1 = 1
                                        LaMatrice(x1, y1) = 1
                    LaMatriceLog = [LaMatriceLog; x1 y1]
                    #print("11")
                    #print("x1 : ", x1, " y1 : ", y1))
                    if (y1 = y1 + 1) == y2:
                        break
                                    end # jusqu’à ce que (y1 = y1 + 1) == y2 
            elif dy < 0 and dx == 0:
                # vecteur vertical décroissant
                while true: # répéter:
                    if y1 == 0:
                        y1 = 1
                                        LaMatrice(x1, y1) = 1
                    LaMatriceLog = [LaMatriceLog; x1 y1]
                    #print("12")
                    #print("x1 : ", x1, " y1 : ", y1))
                    if (y1 = y1 - 1) == y2:
                        break
                                    end # jusqu’à ce que (y1 = y1 - 1) == y2 
            end # fin_si
        end # fin_si
    end # fin_si
    # le pixel final (x2, y2) n’est pas tracé.
    x1_fin = x1
    y1_fin = y1
end # fin procédure 
