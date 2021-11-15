
function [LaMatrice, LaMatriceLog, x1_fin, y1_fin] = FonctionTracerUnSegment(x1, y1, x2, y2, LaMatrice, LaMatriceLog)
    if (dx = x2 - x1) ~= 0
        if dx > 0
            if (dy = y2 - y1) ~= 0
                if dy > 0
                    % vecteur oblique dans le 1er cadran
                    if dx >= dy
                        % vecteur diagonal ou oblique proche de l’horizontale, dans le 1er octant
                        dx = (e = dx) * 2;
                        dy = dy * 2; % e est positif
                        while 1 % boucle sans fin  % déplacements horizontaux
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('1')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (x1 = x1 + 1) == x2 ;
                            if (x1 = x1 + 1) == x2
                                break
                            end
                            if (e = e - dy) < 0
                                y1 = y1 + 1; % déplacement diagonal
                                e = e + dx;
                            end % fin_si;
                        end % fin_boucle;
                    else
                        % vecteur oblique proche de la verticale, dans le 2d octant
                        dy = (e = dy) * 2;
                        dx = dx * 2; % e est positif
                        while 1 % boucle sans fin  % déplacements verticaux
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('2')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (y1 = y1 + 1) == y2 ;
                            if (y1 = y1 + 1) == y2
                                break
                            end
                            if (e = e - dx) < 0
                                x1 = x1 + 1; % déplacement diagonal
                                e = e + dy;
                            end % fin_si;
                        end % fin_boucle;
                    end % fin_si;
                elseif dy < 0 && dx > 0
                    % vecteur oblique dans le 4e cadran
                    if dx >= - dy
                        % vecteur diagonal ou oblique proche de l’horizontale, dans le 8e octant
                        dx = (e = dx) * 2;
                        dy = dy * 2; % e est positif
                        while 1 % boucle sans fin  % déplacements horizontaux
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('3')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (x1 = x1 + 1) == x2 ;
                            if (x1 = x1 + 1) == x2
                                break
                            end
                            if (e = e + dy) < 0
                                y1 = y1 - 1; % déplacement diagonal
                                e = e + dx;
                            end % fin_si;
                        end % fin_boucle;
                    else % vecteur oblique proche de la verticale, dans le 7e octant
                        dy = (e = dy) * 2;
                        dx = dx * 2; % e est négatif
                        while 1 % boucle sans fin  % déplacements verticaux
                            % correction indice = 0
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('4')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (y1 = y1 - 1) == y2 ;
                            if (y1 = y1 - 1) == y2
                                break
                            end
                            if (e = e + dx) > 0
                                x1 = x1 + 1; % déplacement diagonal
                                e = e + dy;
                            end % fin_si;
                        end % fin_boucle;
                    end % fin_si;
                end % fin_si;
            elseif dy == 0 && dx > 0
                % vecteur horizontal vers la droite
                while 1 % répéter
                    if y1 == 0
                        y1 = 1;
                    end
                    LaMatrice(x1, y1) = 1;
                    LaMatriceLog = [LaMatriceLog; x1 y1];
                    %disp('5')
                    %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                    if (x1 = x1 + 1) == x2
                        break
                    end
                end % jusqu’à ce que (x1 = x1 + 1) == x2 ;
            end % fin_si;
        elseif dx < 0
            if (dy = y2 - y1) ~= 0
                if dy > 0
                    % vecteur oblique dans le 2d cadran
                    if - dx >= dy
                        % vecteur diagonal ou oblique proche de l’horizontale, dans le 4e octant
                        dx = (e = dx) * 2;
                        dy = dy * 2; % e est négatif
                        while 1 % boucle sans fin  % déplacements horizontaux
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('6')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (x1 = x1 - 1) == x2 ;
                            if (x1 = x1 - 1) == x2
                                break
                            end
                            if (e = e + dy) >= 0
                                y1 = y1 + 1; % déplacement diagonal
                                e = e + dx;
                            end % fin_si;
                        end % fin_boucle;
                    else
                        % vecteur oblique proche de la verticale, dans le 3e octant
                        dy = ((e) = dy) * 2;
                        dx = dx * 2; % e est positif
                        while 1 % boucle sans fin  % déplacements verticaux
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('7')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (y1 = y1 + 1) == y2 ;
                            if (y1 = y1 + 1) == y2
                                break
                            end
                            if (e = e + dx) <= 0
                                x1 = x1 - 1; % déplacement diagonal
                                e = e + dy;
                            end % fin_si;
                        end % fin_boucle;
                    end % fin_si;
                elseif dy < 0 && dx < 0
                    % vecteur oblique dans le 3e cadran
                    if dx <= dy
                        % vecteur diagonal ou oblique proche de l’horizontale, dans le 5e octant
                        dx = (e = dx) * 2;
                        dy = dy * 2; % e est négatif
                        while 1 % boucle sans fin  % déplacements horizontaux
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('8')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (x1 = x1 - 1) == x2 ;
                            if (x1 = x1 - 1) == x2
                                break
                            end
                            if (e = e - dy) >= 0
                                y1 = y1 - 1; % déplacement diagonal
                                e = e + dx;
                            end % fin_si;
                        end % fin_boucle;
                    else % vecteur oblique proche de la verticale, dans le 6e octant
                        dy = (e = dy) * 2;
                        dx = dx * 2; % e est négatif
                        while 1 % boucle sans fin  % déplacements verticaux
                            if y1 == 0
                                y1 = 1;
                            end
                            LaMatrice(x1, y1) = 1;
                            LaMatriceLog = [LaMatriceLog; x1 y1];
                            %disp('9')
                            %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                            % interrompre boucle if (y1 = y1 - 1) == y2 ;
                            if (y1 = y1 - 1) == y2
                                break
                            end
                            if (e = e - dx) >= 0
                                x1 = x1 - 1; % déplacement diagonal
                                e = e + dy;
                            end % fin_si;
                        end % fin_boucle;
                    end % fin_si;
                end % fin_si;
            elseif dy == 0 && dx < 0
                % vecteur horizontal vers la gauche
                while 1 % répéter
                    if y1 == 0
                        y1 = 1;
                    end
                    LaMatrice(x1, y1) = 1;
                    LaMatriceLog = [LaMatriceLog; x1 y1];
                    %disp('10')
                    %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                    if (x1 = x1 - 1) == x2
                        break
                    end
                end % jusqu’à ce que (x1 = x1 - 1) == x2 ;
            end % fin_si;
        end % fin_si;
    elseif dx == 0
        if (dy = y2 - y1) ~= 0
            if dy > 0
                % vecteur vertical croissant
                while 1 % répéter
                    if y1 == 0
                        y1 = 1;
                    end
                    LaMatrice(x1, y1) = 1;
                    LaMatriceLog = [LaMatriceLog; x1 y1];
                    %disp('11')
                    %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                    if (y1 = y1 + 1) == y2
                        break
                    end
                end % jusqu’à ce que (y1 = y1 + 1) == y2 ;
            elseif dy < 0 && dx == 0
                % vecteur vertical décroissant
                while 1 % répéter
                    if y1 == 0
                        y1 = 1;
                    end
                    LaMatrice(x1, y1) = 1;
                    LaMatriceLog = [LaMatriceLog; x1 y1];
                    %disp('12')
                    %disp(['x1 : ', num2str(x1), ' y1 : ', num2str(y1)])
                    if (y1 = y1 - 1) == y2
                        break
                    end
                end % jusqu’à ce que (y1 = y1 - 1) == y2 ;
            end % fin_si;
        end % fin_si;
    end % fin_si;
    % le pixel final (x2, y2) n’est pas tracé.
    x1_fin = x1;
    y1_fin = y1;
end % fin procédure ;
