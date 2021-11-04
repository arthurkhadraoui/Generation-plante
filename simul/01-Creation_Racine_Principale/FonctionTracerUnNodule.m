
function [LaMatrice LaMatriceLog] = FonctionTracerUnNodule(Diametre, Centre_Ligne, Centre_Colonne, LaMatrice, Angle)
    CoefDecalageColonneExterieur = 2.75;
    DecalageColonneExterieur = round((Diametre / CoefDecalageColonneExterieur) * sin(Angle));
    CoefDiametreExterieur = 0.80;
    DiametreExterieur = round(Diametre * CoefDiametreExterieur);

    CoefDecalageColonneInterieur = 4.2;
    DecalageColonneInterieur = round((Diametre / CoefDecalageColonneInterieur) * sin(Angle));
    CoefDiametreInterieur = 0.9;
    DiametreInterieur = round(Diametre * CoefDiametreInterieur);

    DecalageLigneExterieur = round((Diametre / CoefDecalageColonneExterieur) * cos(Angle));
    DiametreExterieur = round(Diametre * CoefDiametreExterieur);

    DecalageLigneInterieur = round((Diametre / CoefDecalageColonneInterieur) * cos(Angle));
    DiametreInterieur = round(Diametre * CoefDiametreInterieur);

    DiametreCentral = Diametre;
    CoefDecalageAxeAlea = 0.1;
    DecalageAxeAlea = round((2 * Diametre * CoefDecalageAxeAlea * rand()) - (Diametre * CoefDecalageAxeAlea));

    LaMatriceLog = [];

    %DiametreExterieur
    [LaMatrice LaMatriceLogCercle] = FonctionTracerUnCercle(DiametreExterieur, Centre_Ligne - DecalageLigneExterieur, Centre_Colonne - DecalageColonneExterieur + DecalageAxeAlea, LaMatrice);
    LaMatriceLog = [LaMatriceLog; LaMatriceLogCercle];

    % DiametreInterieur
    [LaMatrice LaMatriceLogCercle] = FonctionTracerUnCercle(DiametreInterieur, Centre_Ligne - DecalageLigneInterieur, Centre_Colonne - DecalageColonneInterieur + DecalageAxeAlea, LaMatrice);
    LaMatriceLog = [LaMatriceLog; LaMatriceLogCercle];

    % DiametreCentral
    [LaMatrice LaMatriceLogCercle] = FonctionTracerUnCercle(DiametreCentral, Centre_Ligne, Centre_Colonne + DecalageAxeAlea, LaMatrice);
    LaMatriceLog = [LaMatriceLog; LaMatriceLogCercle];

    %% DiametreInterieur
    [LaMatrice LaMatriceLogCercle] = FonctionTracerUnCercle(DiametreInterieur, Centre_Ligne + DecalageLigneInterieur, Centre_Colonne + DecalageColonneInterieur + DecalageAxeAlea, LaMatrice);
    LaMatriceLog = [LaMatriceLog; LaMatriceLogCercle];

    %%DiametreExterieur
    [LaMatrice LaMatriceLogCercle] = FonctionTracerUnCercle(DiametreExterieur, Centre_Ligne + DecalageLigneExterieur, Centre_Colonne + DecalageColonneExterieur + DecalageAxeAlea, LaMatrice);
    LaMatriceLog = [LaMatriceLog; LaMatriceLogCercle];

    % suppression points doublons
    NbColonnes = size(LaMatriceLog, 2);
    LaMatriceUnique = unique(LaMatriceLog( : , 1 : NbColonnes), 'rows');
    LaMatriceLog = LaMatriceUnique;
end
