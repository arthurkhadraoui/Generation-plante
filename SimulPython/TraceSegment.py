def TraceSegment(Matrice, x1, y1, x2, y2):
    dx = x2 - x1;
    dy = y2 - y1;
    if dx!=0:
        if dx>0:
            if dy!=0:
                if dy>0:
                    if dx>=dy:
                        e=dx
                        dx*=2
                        dy*+2
                        while(True):
                            if y1==0:
                                y1=1
                            Matrice[x1][y1]=1
                            x1+=1
                            if x1==x2:
                                break
                            e=e-dy
                            if e<0:
                                y1+=1
                                e+=dx
                    else:
                        e=dy
                        dy*=2
                        dx*=2
                        while(True):
                            if y1==0:
                                y1=1
                            Matrice[x1][y1]=1
                            y1+=1
                            if y1==y2:
                                break
                            e-=dx
                            if e<0:
                                x1+=1
                                e+=dy
                elif dy<0 and dx>0:
                    if dx >= -dy:
                        e=dx
                        dx*=2
                        dy*=2
                        while True:
                            if y1==0:
                                y1=1
                            Matrice[x1][y1]=1
                            x1+=1
                            if x1==x2:
                                break
                            e+=dy
                            if e<0:
                                y1-=1
                                e+=dx
                    else:
                        e=dy
                        dy*=2
                        dx*=2
                        while True:
                            if y1==0:
                                y1=1
                            Matrice[x1][y1]
                            y1-=1
                            if y1==y2:
                                break
                            e = e+dx
                            if e>0:
                                x1+=1
                                e+=dy
        elif dx<0:
            if dy!=0:
                if dy>0:
                    if -dx>=dy: #a verifier
                        e=dx
                        dx*=2
                        dy*=2
                        while True:
                            if y1==0:
                                y1=1
                            Matrice[x1][y1]=1
                            x1-=1
                            if x1==x2:
                                break
                            e+=dy
                            if e>=0:
                                y1+=1
                                e+=dx
                    else:
                        e=dy
                        dy*=2
                        dx*=2
                        while True:
                            if y1==0:
                                y1=1
                            Matrice[x1][y1] = 1
                            y1+=1
                            if y1==y2:
                                break
                            e+=dx
                            if e<=0:
                                x1-=1
                                e+=dy
                elif dy < 0 and dx < 0 :
                    if dx <= dy:
                        e=dx
                        dx*=2
                        dy*=2
                        while True:
                            if y1 == 0:
                                y1 = 1
                            Matrice[x1][y1] = 1
                            x1-=1
                            if x1==x2:
                                break
                            e-=dy
                            if e>=0:
                                y1-=1
                                e+=dx
                    else:
                        e=dy
                        dy*=2
                        dx*=2
                        while True:
                            if y1==0:
                                y1=1
                            Matrice[x1][y1] = 1
                            y1-=1
                            if y1==y2:
                                break
                            e-=dx
                            if e>=0:
                                x1-=1
                                e+=dy
            elif dy == 0 and dx<0:
                while True:
                    if y1 == 0:
                        y1 = 1
                    Matrice[x1][y1] = 1
                    x1-=1
                    if x1==x2:
                        break
        elif dx==0:
            if dy!=0:
                if dy>0:
                    while True:
                        if y1==0:
                            y1=1
                        Matrice[x1][y1] = 1
                        y1+=1
                        if y1==y2:
                            break
                elif dy<0 and dx==0:
                    while True:
                        if y1==0:
                            y1=1
                        Matrice[x1][y1] = 1
                        y1-=1
                        if y1==y2:
                            break
    x1_fin=x1
    y1_fin=y1
    return(Matrice,x1_fin,y1_fin)