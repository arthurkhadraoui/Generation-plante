
function [LeNombreAlea] = FonctionNombreLoiNormaleCentree()
    LeNombreAlea = (randn() + 3)/6;
    if LeNombreAlea < 0
        LeNombreAlea = 0;
    elseif LeNombreAlea > 1
        LeNombreAlea = 1;
    end
end
