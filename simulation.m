global f_param;
global V;

y0 = initialValues();
options = odeset('RelTol',1e-9,'AbsTol',1e-9);

t = 0:1:120;
condition = 3;

totalShc  = zeros(length(t),condition);
totalGrb2 = zeros(length(t),condition);
RSh       = zeros(length(t),condition);
RGrb2     = zeros(length(t),condition);
totalSOS  = zeros(length(t),condition);
ShGS      = zeros(length(t),condition);
PLCgamma  = zeros(length(t),condition);

for i=1:condition
    if i==1 % EGF: 20 nM
        y0(V.EGF) = 680.0;
    elseif i==2 % EGF: 2 nM
        y0(V.EGF) = 68.0;
    elseif i==3 % Absence of the PLCγ P translocation step
        y0(V.EGF) = 680.0;
        f_param.k25f = 0.0;
        f_param.k25b = 0.0;
    end

    [T,Y] = ode15s(@diffeq,[0 120],y0);

    totalShc(:,i) = interp1(T,...
        Y(:,V.R_ShP) + Y(:,V.R_Sh_G) + Y(:,V.R_Sh_G_S) + ...
        Y(:,V.ShP) + Y(:,V.Sh_G) + Y(:,V.Sh_G_S),...
        t);
    totalGrb2(:,i) = interp1(T,...
        Y(:,V.R_Sh_G) + Y(:,V.Sh_G) + Y(:,V.R_Sh_G_S) + Y(:,V.Sh_G_S),...
        t);
    RSh(:,i) = interp1(T,...
        Y(:,V.R_ShP) + Y(:,V.R_Sh_G) + Y(:,V.R_Sh_G_S),...
        t);
    RGrb2(:,i) = interp1(T,...
        Y(:,V.R_G) + Y(:,V.R_G_S) + Y(:,V.R_Sh_G) + Y(:,V.R_Sh_G_S),...
        t);
    totalSOS(:,i) = interp1(T,...
        Y(:,V.R_G_S) + Y(:,V.R_Sh_G_S),...
        t);
    ShGS(:,i) = interp1(T,...
        Y(:,V.Sh_G_S),...
        t);
    PLCgamma(:,i) = interp1(T,...
        Y(:,V.R_PLP) + Y(:,V.PLCgP),...
        t);
end