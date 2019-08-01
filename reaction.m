function v = reaction(y)

    global f_param;
    global V;

    v(1)  = f_param.k1f*y(V.R)*y(V.EGF) - f_param.k1b*y(V.Ra);
    v(2)  = f_param.k2f*y(V.Ra)*y(V.Ra) - f_param.k2b*y(V.R2);
    v(3)  = f_param.k3f*y(V.R2) - f_param.k3b*y(V.RP);
    v(4)  = f_param.V4*y(V.RP)/(f_param.K4+y(V.RP));
    v(5)  = f_param.k5f*y(V.RP)*y(V.PLCg) - f_param.k5b*y(V.R_PL);
    v(6)  = f_param.k6f*y(V.R_PL) - f_param.k6b*y(V.R_PLP);
    v(7)  = f_param.k7f*y(V.R_PLP) - f_param.k7b*y(V.RP)*y(V.PLCgP);
    v(8)  = f_param.V8*y(V.PLCgP)/(f_param.K8+y(V.PLCgP));
    v(9)  = f_param.k9f*y(V.RP)*y(V.Grb2)- f_param.k9b*y(V.R_G);
    v(10) = f_param.k10f*y(V.R_G)*y(V.SOS) - f_param.k10b*y(V.R_G_S);
    v(11) = f_param.k11f*y(V.R_G_S) - f_param.k11b*y(V.RP)*y(V.G_S);
    v(12) = f_param.k12f*y(V.G_S) - f_param.k12b*y(V.Grb2)*y(V.SOS);
    v(13) = f_param.k13f*y(V.RP)*y(V.Shc) - f_param.k13b*y(V.R_Sh);
    v(14) = f_param.k14f*y(V.R_Sh) - f_param.k14b*y(V.R_ShP);
    v(15) = f_param.k15f*y(V.R_ShP) - f_param.k15b*y(V.ShP)*y(V.RP);
    v(16) = f_param.V16*y(V.ShP)/(f_param.K16+y(V.ShP));
    v(17) = f_param.k17f*y(V.R_ShP)*y(V.Grb2) - f_param.k17b*y(V.R_Sh_G);
    v(18) = f_param.k18f*y(V.R_Sh_G) - f_param.k18b*y(V.RP)*y(V.Sh_G);
    v(19) = f_param.k19f*y(V.R_Sh_G)*y(V.SOS) - f_param.k19b*y(V.R_Sh_G_S);
    v(20) = f_param.k20f*y(V.R_Sh_G_S) - f_param.k20b*y(V.Sh_G_S)*y(V.RP);
    v(21) = f_param.k21f*y(V.ShP)*y(V.Grb2) - f_param.k21b*y(V.Sh_G);
    v(22) = f_param.k22f*y(V.Sh_G)*y(V.SOS) - f_param.k22b*y(V.Sh_G_S);
    v(23) = f_param.k23f*y(V.Sh_G_S) - f_param.k23b*y(V.ShP)*y(V.G_S);
    v(24) = f_param.k24f*y(V.R_ShP)*y(V.G_S) - f_param.k24b*y(V.R_Sh_G_S);
    v(25) = f_param.k25f*y(V.PLCgP) - f_param.k25b*y(V.PLCgP_I);

end