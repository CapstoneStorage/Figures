close all;
clear all;
%% parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cpu_frequency = [1, 0.5, 0.25, 0.125];
result_count = [6, 22, 32, 40];
trial = 1;
%% directory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foldername = "figures";
% mkdir(foldername);
%% plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
clf
grid on
box on
X = categorical(cpu_frequency);
% X = reordercats(X, offloading_ratio);
b = bar(X, result_count);
xtips = b.XEndPoints;
ytips = b.YEndPoints;
% xlim([0 1]);
ylim([0 50]);
labels1 = string(b.YData);
text(xtips, ytips, labels1, 'HorizontalAlignment','center',...
                            'VerticalAlignment','bottom');
xlabel('CPU Frequency');
ylabel('Count');

set(gca,'fontsize',12);
% title('CPU Frequency');

saveas(figure(1),foldername+'/figure_cpufreq_'+'trial_'+ num2str(trial)+'.png');
saveas(figure(1),foldername+'/figure_cpufreq_'+'trial_'+ num2str(trial)+'.fig');
saveas(figure(1),foldername+'/figure_cpufreq_'+'trial_'+ num2str(trial)+'.pdf');