close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
algorithm = ["GAS", "PSVS", "COVS"];
results = [148.753, 147.079, 100.479];
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "figures";
% mkdir(foldername);
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
grid on
box on
X = categorical(algorithm);
% X = reordercats(X, algorithm);
b = bar(X, results);
xtips = b.XEndPoints;
ytips = b.YEndPoints;
% xlim([0 1]);
ylim([0 160]);
labels1 = string(b.YData);
text(xtips, ytips, labels1, 'HorizontalAlignment','center',...
                            'VerticalAlignment','bottom');
ylabel('Power');

set(gca,'fontsize',12);
% title('Power');

saveas(figure(1),foldername+'/figure_power_'+'trial_'+ num2str(trial)+'.png');
saveas(figure(1),foldername+'/figure_power_'+'trial_'+ num2str(trial)+'.fig');
saveas(figure(1),foldername+'/figure_power_'+'trial_'+ num2str(trial)+'.pdf');