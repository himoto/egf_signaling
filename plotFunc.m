figure('Renderer', 'painters', 'Position', [0 0 800 600]);

subplot(2,2,1);
hold on;
plot(t,totalShc(:,1),'g');
plot(t,totalShc(:,2),'g--');
plot(t,totalGrb2(:,1),'m');
plot(t,totalGrb2(:,2),'m--');
xlim([0 120]);
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
ylim([0 150]);
xlabel("TIME (s)");
ylabel("Protein concentrations (nM)");
hold off;
box on;

subplot(2,2,2);
hold on;
plot(t,RSh(:,1),'g');
plot(t,RSh(:,2),'g--');
plot(t,RGrb2(:,1),'m');
plot(t,RGrb2(:,2),'m--');
xlim([0 120]);
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
ylim([0 25]);
xlabel("TIME (s)");
ylabel("Protein concentrations (nM)");
hold off;
box on;

subplot(2,2,3);
hold on;
yyaxis left;
plot(t,totalSOS(:,1),'g');
plot(t,totalSOS(:,2),'g--');
xlim([0 120]);
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
xlabel("TIME (s)");
ylim([0 8]);
ylabel("SOS bound to EGFR (nM)");

yyaxis right;
plot(t,ShGS(:,1),'m');
plot(t,ShGS(:,2),'m--');
xlim([0 120]);
ylim([0 30]);
ylabel("Concentration of Sh-G-S (nM)");
hold off;
box on;

subplot(2,2,4);
hold on;
plot(t,PLCgamma(:,1),'g');
plot(t,PLCgamma(:,2),'g--');
xlim([0 120]);
set(gca, 'Xtick', [0 30 60 90 120],...
    'Xticklabel', [0 30 60 90 120]);
ylim([0 15]);
xlabel("TIME (s)");
ylabel("Total Phosphorylated PLCγ (nM)");
hold off;
box on;