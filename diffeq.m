function dydt = diffeq(t,y)
    global V;
    
    dydt = zeros(V.size,1);

    v = reaction(y);

    dydt(V.EGF)      = -v(1);
    dydt(V.R)        = -v(1);
    dydt(V.Ra)       =  v(1)-2*v(2);
    dydt(V.R2)       =  v(2)-v(3)+v(4);
    dydt(V.RP)       =  v(3)-v(4)-v(5)+v(7)-v(9)+v(11)-v(13)+v(15)+v(18)+v(20);
    dydt(V.PLCg)     = -v(5)+v(8);
    dydt(V.R_PL)     =  v(5)-v(6);
    dydt(V.R_PLP)    =  v(6)-v(7);
    dydt(V.PLCgP)    =  v(7)-v(8)-v(25);
    dydt(V.Grb2)     = -v(9)+v(12)-v(17)-v(21);
    dydt(V.R_G)      =  v(9)-v(10);
    dydt(V.SOS)      = -v(10)+v(12)-v(19)-v(22);
    dydt(V.R_G_S)    =  v(10)-v(11);
    dydt(V.G_S)      =  v(11)-v(12)+v(23)-v(24);
    dydt(V.Shc)      = -v(13)+v(16);
    dydt(V.R_Sh)     =  v(13)-v(14);
    dydt(V.R_ShP)    =  v(14)-v(15)-v(17)-v(24);
    dydt(V.ShP)      =  v(15)-v(16)-v(21)+v(23);
    dydt(V.R_Sh_G)   =  v(17)-v(18)-v(19);
    dydt(V.Sh_G)     =  v(18)+v(21)-v(22);
    dydt(V.R_Sh_G_S) =  v(19)-v(20)+v(24);
    dydt(V.Sh_G_S)   =  v(20)+v(22)-v(23);
    dydt(V.PLCgP_I)  =  v(25);

end