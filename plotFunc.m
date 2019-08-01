figure('Renderer', 'painters', 'Position', [0 0 700 600]);

subplot(2,2,1);
hold on;
plot(t,totalShc(:,1),'r-');
plot(t,totalShc(:,2),'m-');
plot(t,totalGrb2(:,1),'b-');
plot(t,totalGrb2(:,2),'c-');
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
ylim([0 150]);
xlim([0 120]);
xlabel("TIME (s)");
ylabel("Protein concentrations (nM)");
hold off;
box on;

subplot(2,2,2);
hold on;
plot(t,RSh(:,1),'r-');
plot(t,RSh(:,2),'m-');
plot(t,RGrb2(:,1),'b-');
plot(t,RGrb2(:,2),'c-');
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
ylim([0 150]);
xlim([0 120]);
ylim([0 25]);
xlabel("TIME (s)");
ylabel("Protein concentrations (nM)");
hold off;
box on;

subplot(2,2,3);
hold on;
yyaxis left;
plot(t,totalSOS(:,1),'b-');
plot(t,totalSOS(:,2),'c-');
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
ylim([0 150]);
xlim([0 120]);
xlabel("TIME (s)");
ylim([0 8]);
set(gca, 'Ytick', [0 2 4 6 8],...
    'Yticklabel', [0 2 4 6 8]);

ylabel("SOS bound to EGFR (nM)");

yyaxis right;
plot(t,ShGS(:,1),'r-');
plot(t,ShGS(:,2),'m-');

xlim([0 120]);
ylim([0 30]);
ylabel("Concentration of Sh-G-S (nM)");
hold off;
box on;

subplot(2,2,4);
hold on;
yyaxis left;
plot(t,PLCgamma(:,1),'b-');
plot(t,PLCgamma(:,2),'c-');
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
xlim([0 120]);
ylim([0 15]);
xlabel("TIME (s)");
ylabel("Total Phosphorylated PLCγ (nM)");

yyaxis right;
plot(t,PLCgamma(:,3),'--');
ylim([0 105]);
set(gca, 'Ytick', [0 30 60 90],...
    'Yticklabel', [0 30 60 90]);

hold off;
box on;