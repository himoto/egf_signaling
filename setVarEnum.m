function setVarEnum()

    global V;

    V.EGF = 0;
    V.R = 0;
    V.Ra = 0;
    V.R2 = 0;
    V.RP = 0;
    V.PLCg = 0;
    V.R_PL = 0;
    V.R_PLP = 0;
    V.PLCgP = 0;
    V.Grb2 = 0;
    V.R_G = 0;
    V.SOS = 0;
    V.R_G_S = 0;
    V.G_S = 0;
    V.Shc = 0;
    V.R_Sh = 0;
    V.R_ShP = 0;
    V.ShP = 0;
    V.R_Sh_G = 0;
    V.Sh_G = 0;
    V.R_Sh_G_S = 0;
    V.Sh_G_S = 0;
    V.PLCgP_I = 0;

    variable = fieldnames(V);
    lenVars = length(variable);
    for i=1:lenVars
        f_varName = char(variable(i));
        V.(f_varName) = i;
    end

    V.size = lenVars;

end