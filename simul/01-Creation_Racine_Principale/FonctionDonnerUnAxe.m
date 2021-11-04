
function [LaMatrice, LaMatriceLog] = FonctionDonnerUnAxe(x1, y1)

    [NbLignes, NbColonnes, NbImages] = FonctionLireParametresFichierConf_image();
    [AngleMaxiEnDegres CoefLongueurMaxiDuSegment LongueurMaxiDuSegment NombreMaxiDuSegment] = FonctionLireParametresFichierConf_segment();

    [LaMatrice] = FonctionCreationMatriceRacine(NbLignes, NbColonnes);
    LaMatriceLog = [];

    % Marge de 1 % pour ne pas toucher le bas de limage
    Marge = 0.01;

    LgMaxi = round((CoefLongueurMaxiDuSegment - ((1 - (CoefLongueurMaxiDuSegment - Marge)) * rand())) * NbLignes);

    while 1
        [x2, y2, AngleAleaEnRadians, LaLongueurDuSegment AngleAleaEnDegres] = FonctionDonnerLesCoordonneesDuSegment(x1, y1);
        [LaMatrice, LaMatriceLog, x1_fin, y1_fin] = FonctionTracerUnSegment(x1, y1, x2, y2, LaMatrice, LaMatriceLog);

        x1 = x1_fin;
        y1 = y1_fin;

        % limite matrice
        if x1_fin > LgMaxi
            %disp('break x1_fin > LgMaxi de FonctionDonnerUnAxe')
            x1_fin = LgMaxi;
            break
        end
        if y1_fin < 1
            %disp('break y1_fin < 1 de FonctionDonnerUnAxe')
            y1_fin = 1;
            break
        end
        if y1_fin > NbColonnes
            %disp('break y1_fin > NbColonnes de FonctionDonnerUnAxe')
            y1_fin = NbColonnes;
            break
        end

    end

end
