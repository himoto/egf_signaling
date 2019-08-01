function y0 = initialValues()
    global V;

    y0 = zeros(V.size,1);

    y0(V.EGF) = 680;
    y0(V.R) = 100;
    y0(V.PLCg) = 105;
    y0(V.Grb2) = 85;
    y0(V.SOS) = 34;
    y0(V.Shc) = 150;

end