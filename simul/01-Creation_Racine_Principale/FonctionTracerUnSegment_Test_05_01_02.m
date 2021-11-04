
clear
clc

disp('début programme')
disp('temps environ 1 seconde(s)')
tic;

disp(' ')

LaMatrice = zeros(400, 400);
LaMatriceLog = [];

% 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, et 97
jligne_1 = 1;
icolonne_1 = 200;
jligne_2 = 37;
icolonne_2 = 7;

[LaMatrice, LaMatriceLog, x1_fin, y1_fin] = FonctionTracerUnSegment(jligne_1, icolonne_1, jligne_2, icolonne_2, LaMatrice, LaMatriceLog);

disp('1')
x1_fin
y1_fin
jligne_1 = x1_fin;
icolonne_1 = y1_fin;
jligne_2 = 67;
icolonne_2 = 83;

[LaMatrice, LaMatriceLog, x1_fin, y1_fin] = FonctionTracerUnSegment(jligne_1, icolonne_1, jligne_2, icolonne_2, LaMatrice, LaMatriceLog);

disp(' ')
disp('2')
x1_fin
y1_fin
jligne_1 = x1_fin;
icolonne_1 = y1_fin;
jligne_2 = 97;
icolonne_2 = 77;

[LaMatrice, LaMatriceLog, x1_fin, y1_fin] = FonctionTracerUnSegment(jligne_1, icolonne_1, jligne_2, icolonne_2, LaMatrice, LaMatriceLog);

disp(' ')
disp('3')
x1_fin
y1_fin

Version_Algo = '05_01_02';
NomFichier = 'FonctionTracerUnSegment_LaMatrice_Test_';

% utilitaire de svg
FonctionSVG(Version_Algo, NomFichier, LaMatrice, LaMatriceLog);

temps = toc
disp('fin programme')
