
clear
clc

Conf_racine_primaire = 'Conf_racine_primaire_001.csv';
MatriceInfo = csvread(Conf_racine_primaire);

PourcentageOrigineMini = MatriceInfo(1)
PourcentageVariationOrigineMini = MatriceInfo(2)
DiametreMaxRacinePrimaire = MatriceInfo(3)
DiametreMinRacinePrimaire = MatriceInfo(4)
