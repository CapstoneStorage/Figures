close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
offloading_ratio = [0, 0.25, 0.5, 0.75, 1];
result_count = [8, 10, 12, 23, 47];
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "figures";
% mkdir(foldername);
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
grid on
box on
X = categorical(offloading_ratio);
% X = reordercats(X, offloading_ratio);
b = bar(X, result_count);
xtips = b.XEndPoints;
ytips = b.YEndPoints;
% xlim([0 1]);
% ylim([0 100]);
labels1 = string(b.YData);
text(xtips, ytips, labels1, 'HorizontalAlignment','center',...
                            'VerticalAlignment','bottom');
xlabel('Offloading Ratio');
ylabel('Count');

set(gca,'fontsize',12);
% title('Offloading Ratio');

saveas(figure(1),foldername+'/figure_offloadingratio_'+'trial_'+ num2str(trial)+'.png');
saveas(figure(1),foldername+'/figure_offloadingratio_'+'trial_'+ num2str(trial)+'.fig');
saveas(figure(1),foldername+'/figure_offloadingratio_'+'trial_'+ num2str(trial)+'.pdf');