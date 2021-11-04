
function [NbAleLoiNormale] = FonctionDonnerUnNbAleLoiNormale()
    % + ou - 3 ET
    NbEcartType = 3;
    NbAlea = randn();
    if NbAlea < - NbEcartType
        NbAlea =  NbEcartType;
    elseif NbAlea > NbEcartType
        NbAlea = NbEcartType;
    end
    NbAleLoiNormale = (NbAlea + NbEcartType) / (2 * NbEcartType);
end
