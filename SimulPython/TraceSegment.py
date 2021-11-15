

def TraceSegment(Matrice,MatricLog,x1,x2,y1,y2):

    dx=x2-x1;
    dy=y2-y1;
    e1=dx;
    e2=dy;
    if (dx)!=0:
        if (dx)>0:
            if (dy) != 0:
                if (dy) > 0:
                    if(dx)>=(dy):
                        dx*=2;
                        dy*=2;
                        while (x1+1!=x2):
                            if y1==0:
                                y1=1;
                            Matrice[x1][y1]=1;
                            if(dx-dy)<0:
                                y1+=1;
                                e1+=dx;
                    else:
                        dy*=2;
                        dx*=2;
                        while (y1+1!=y2):
                            if y1==0:
                                y1=1;
                            Matrice[x1][y1]=1;
                            if(dy-dx)<0:
                                x1+=1;
                                e2+=dy;
                elif dy < 0 and dx > 0:
                    if (dx) >= -(dy):
                        dx *= 2;
                        dy *= 2;
                        while (x1 + 1 != x2):
                            if y1 == 0:
                                y1 = 1;
                            Matrice[x1][y1] = 1;
                            if (dx - dy) < 0:
                                y1 -= 1;
                                e1 += dx;
                    else:
                        dy *= 2;
                        dx *= 2;
                        while (y1 + 1 != y2):
                            if y1 == 0:
                                y1 = 1;
                            Matrice[x1][y1] = 1;
                            if (dy - dx) < 0:
                                x1 += 1;
                                e2 += dy;






