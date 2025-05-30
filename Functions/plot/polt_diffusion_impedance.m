
% Plot DFN-like impedance models results

function Origin = polt_diffusion_impedance(out, Multiple, input)

%% Z_Ds1
figure(3)
subplot(2,3,1)
dq = jet(length(Multiple));       % 5 colours are generated
hold on
i = 1;
for d = 1:length(Multiple)        % 5 lines in plot are taken
    plot(1e3 * out{d,1}.ZD.Nyquist_Ds_neg(:,1),...
         1e3 * out{d,1}.ZD.Nyquist_Ds_neg(:,2),...
         'color',dq(i,:),'linewidth',3)
    i = i+1;
end
% Set the properties of the coordinate axis.
xlabel('{\itZ}_{Ds1}` (mΩ m^2)','fontsize',12,'fontname','Times')
ylabel('{\itZ}_{Ds1}`` (mΩ m^2)','fontsize',12,'fontname','Times')
axis([-0.02 0.4 -0.4 0.02])
% Flip the Y axis up and down.
set(gca, 'YDir','reverse')
% Set grid.
set(gca,'FontSize',15,'xgrid','on')
set(gca,'FontSize',15,'ygrid','on')

switch input
    case 'Ds_neg'
        h=legend([num2str(Multiple(1)),' {\itD}_{s1}'],...
                 [num2str(Multiple(2)),' {\itD}_{s1}'],...
                 [num2str(Multiple(3)),' {\itD}_{s1}'],...
                 [num2str(Multiple(4)),' {\itD}_{s1}'],...
                 [num2str(Multiple(5)),' {\itD}_{s1}'],'Location','northeast');
    case 'rs_neg'
        h=legend([num2str(Multiple(1)),' {\itr}_{s1}'],...
                 [num2str(Multiple(2)),' {\itr}_{s1}'],...
                 [num2str(Multiple(3)),' {\itr}_{s1}'],...
                 [num2str(Multiple(4)),' {\itr}_{s1}'],...
                 [num2str(Multiple(5)),' {\itr}_{s1}'],'Location','northeast');
    case 'k_neg'
        h=legend([num2str(Multiple(1)),' {\itk}_{1}'],...
                 [num2str(Multiple(2)),' {\itk}_{1}'],...
                 [num2str(Multiple(3)),' {\itk}_{1}'],...
                 [num2str(Multiple(4)),' {\itk}_{1}'],...
                 [num2str(Multiple(5)),' {\itk}_{1}'],'Location','northeast');
    case 'rou_sei_neg'
        h=legend([num2str(Multiple(1)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(2)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(3)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(4)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(5)),' {\itρ}_{sei1}'],'Location','northeast');
    case 'L_neg'
        h=legend([num2str(Multiple(1)),' {\itL}_{1}'],...
                 [num2str(Multiple(2)),' {\itL}_{1}'],...
                 [num2str(Multiple(3)),' {\itL}_{1}'],...
                 [num2str(Multiple(4)),' {\itL}_{1}'],...
                 [num2str(Multiple(5)),' {\itL}_{1}'],'Location','northeast');
    case 'epse_neg'
        h=legend([num2str(Multiple(1)),' {\itε}_{e1}'],...
                 [num2str(Multiple(2)),' {\itε}_{e1}'],...
                 [num2str(Multiple(3)),' {\itε}_{e1}'],...
                 [num2str(Multiple(4)),' {\itε}_{e1}'],...
                 [num2str(Multiple(5)),' {\itε}_{e1}'],'Location','northeast');
    case 'sigma_neg'
        h=legend([num2str(Multiple(1)),' {\itσ}_{1}'],...
                 [num2str(Multiple(2)),' {\itσ}_{1}'],...
                 [num2str(Multiple(3)),' {\itσ}_{1}'],...
                 [num2str(Multiple(4)),' {\itσ}_{1}'],...
                 [num2str(Multiple(5)),' {\itσ}_{1}'],'Location','northeast');
    case 'De'
        h=legend([num2str(Multiple(1)),' {\itD}_{e}'],...
                 [num2str(Multiple(2)),' {\itD}_{e}'],...
                 [num2str(Multiple(3)),' {\itD}_{e}'],...
                 [num2str(Multiple(4)),' {\itD}_{e}'],...
                 [num2str(Multiple(5)),' {\itD}_{e}'],'Location','northeast');
    case 'kappa'
        h=legend([num2str(Multiple(1)),' {\itκ}'],...
                 [num2str(Multiple(2)),' {\itκ}'],...
                 [num2str(Multiple(3)),' {\itκ}'],...
                 [num2str(Multiple(4)),' {\itκ}'],...
                 [num2str(Multiple(5)),' {\itκ}'],'Location','northeast');
    case 't_plus'
        h=legend([num2str(Multiple(1)),' {\itt}_{0+}'],...
                 [num2str(Multiple(2)),' {\itt}_{0+}'],...
                 [num2str(Multiple(3)),' {\itt}_{0+}'],...
                 [num2str(Multiple(4)),' {\itt}_{0+}'],...
                 [num2str(Multiple(5)),' {\itt}_{0+}'],'Location','northeast');
    case 'T'
        Multiple_T = 25 + Multiple;
        h=legend([num2str(Multiple_T(1)),' °C'],...
                 [num2str(Multiple_T(2)),' °C'],...
                 [num2str(Multiple_T(3)),' °C'],...
                 [num2str(Multiple_T(4)),' °C'],...
                 [num2str(Multiple_T(5)),' °C'],'Location','northeast');
end
set(h,'FontName','Times New Roman','FontSize',15,'FontWeight','normal')

switch input
    case 'Ds_neg'
        title('Figure 14 (a) {\itD}_{s1}')
    case 'rs_neg'
        title('Figure 14 (c) {\itr}_{s1}')
    case 'k_neg'
        title('Figure 14 (e) {\itk}_{1}')
    case 'rou_sei_neg'
        title('Figure 14 (g) {\itρ}_{sei1}')
    case 'L_neg'
        title('Figure 18 (a) {\itL}_{1}')
    case 'epse_neg'
        title('Figure 18 (c) {\itε}_{e1}')
    case 'sigma_neg'
        title('Figure 18 (e) {\itσ}_{1}')
    case 'De'
        title('Figure 22 (a) {\itD}_e')
    case 'kappa'
        title('Figure 22 (c) {\itκ}')
    case 't_plus'
        title('Figure 22 (e) {\itt}_{0+}')
    case 'T'
        title('Figure 25 (a) {\itT}')
end

%% Z_De1
subplot(2,3,2)
dq = jet(length(Multiple));       % 5 colours are generated
hold on
i = 1;
for d = 1:length(Multiple)        % 5 lines in plot are taken
    plot(1e3 * out{d,1}.ZD.Nyquist_De_neg(:,1),...
         1e3 * out{d,1}.ZD.Nyquist_De_neg(:,2),...
         'color',dq(i,:),'linewidth',3)
    i = i+1;
end
% Set the properties of the coordinate axis.
xlabel('{\itZ}_{De1}` (mΩ m^2)','fontsize',12,'fontname','Times')
ylabel('{\itZ}_{De1}`` (mΩ m^2)','fontsize',12,'fontname','Times')
axis([-0.01 0.2 -0.2 0.01])
% Flip the Y axis up and down.
set(gca, 'YDir','reverse')
% Set grid.
set(gca,'FontSize',15,'xgrid','on')
set(gca,'FontSize',15,'ygrid','on')
switch input
    case 'Ds_neg'
        title('Figure 14 (b) {\itD}_{s1}')
    case 'rs_neg'
        title('Figure 14 (d) {\itr}_{s1}')
    case 'k_neg'
        title('Figure 14 (f) {\itk}_{1}')
    case 'rou_sei_neg'
        title('Figure 14 (h) {\itρ}_{sei1}')
    case 'L_neg'
        title('Figure 18 (b) {\itL}_{1})')
    case 'epse_neg'
        title('Figure 18 (d) {\itε}_{e1}')
    case 'sigma_neg'
        title('Figure 18 (f) {\itσ}_{1}')
    case 'De'
        title('Figure 22 (b) {\itD}_e')
    case 'kappa'
        title('Figure 22 (d) {\itκ}')
    case 't_plus'
        title('Figure 22 (f) {\itt}_{0+}')
    case 'T'
        title('Figure 25 (b) {\itT}')
end

%% Z_De3
subplot(2,3,5)
dq = jet(length(Multiple));       % 5 colours are generated
hold on
i = 1;
for d = 1:length(Multiple)        % 5 lines in plot are taken
    plot(1e3 * out{d,1}.ZD.Nyquist_De_sep(:,1),...
         1e3 * out{d,1}.ZD.Nyquist_De_sep(:,2),...
         'color',dq(i,:),'linewidth',3)
    i = i+1;
end
% Set the properties of the coordinate axis.
xlabel('{\itZ}_{De3}` (mΩ m^2)','fontsize',12,'fontname','Times')
ylabel('{\itZ}_{De3}`` (mΩ m^2)','fontsize',12,'fontname','Times')
axis([-0.005 0.1 -0.1 0.005])
% Flip the Y axis up and down.
set(gca, 'YDir','reverse')
% Set grid.
set(gca,'FontSize',15,'xgrid','on')
set(gca,'FontSize',15,'ygrid','on')

switch input
    case 'Ds_neg'
        h=legend([num2str(Multiple(1)),' {\itD}_{s1}'],...
                 [num2str(Multiple(2)),' {\itD}_{s1}'],...
                 [num2str(Multiple(3)),' {\itD}_{s1}'],...
                 [num2str(Multiple(4)),' {\itD}_{s1}'],...
                 [num2str(Multiple(5)),' {\itD}_{s1}'],'Location','northeast');
    case 'rs_neg'
        h=legend([num2str(Multiple(1)),' {\itr}_{s1}'],...
                 [num2str(Multiple(2)),' {\itr}_{s1}'],...
                 [num2str(Multiple(3)),' {\itr}_{s1}'],...
                 [num2str(Multiple(4)),' {\itr}_{s1}'],...
                 [num2str(Multiple(5)),' {\itr}_{s1}'],'Location','northeast');
    case 'k_neg'
        h=legend([num2str(Multiple(1)),' {\itk}_{1}'],...
                 [num2str(Multiple(2)),' {\itk}_{1}'],...
                 [num2str(Multiple(3)),' {\itk}_{1}'],...
                 [num2str(Multiple(4)),' {\itk}_{1}'],...
                 [num2str(Multiple(5)),' {\itk}_{1}'],'Location','northeast');
    case 'rou_sei_neg'
        h=legend([num2str(Multiple(1)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(2)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(3)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(4)),' {\itρ}_{sei1}'],...
                 [num2str(Multiple(5)),' {\itρ}_{sei1}'],'Location','northeast');
    case 'L_neg'
        h=legend([num2str(Multiple(1)),' {\itL}_{3}'],...
                 [num2str(Multiple(2)),' {\itL}_{3}'],...
                 [num2str(Multiple(3)),' {\itL}_{3}'],...
                 [num2str(Multiple(4)),' {\itL}_{3}'],...
                 [num2str(Multiple(5)),' {\itL}_{3}'],'Location','northeast');
    case 'epse_neg'
        h=legend([num2str(Multiple(1)),' {\itε}_{e3}'],...
                 [num2str(Multiple(2)),' {\itε}_{e3}'],...
                 [num2str(Multiple(3)),' {\itε}_{e3}'],...
                 [num2str(Multiple(4)),' {\itε}_{e3}'],...
                 [num2str(Multiple(5)),' {\itε}_{e3}'],'Location','northeast');
    case 'sigma_neg'
        h=legend([num2str(Multiple(1)),' {\itσ}'],...
                 [num2str(Multiple(2)),' {\itσ}'],...
                 [num2str(Multiple(3)),' {\itσ}'],...
                 [num2str(Multiple(4)),' {\itσ}'],...
                 [num2str(Multiple(5)),' {\itσ}'],'Location','northeast');
    case 'De'
        h=legend([num2str(Multiple(1)),' {\itD}_{e}'],...
                 [num2str(Multiple(2)),' {\itD}_{e}'],...
                 [num2str(Multiple(3)),' {\itD}_{e}'],...
                 [num2str(Multiple(4)),' {\itD}_{e}'],...
                 [num2str(Multiple(5)),' {\itD}_{e}'],'Location','northeast');
    case 'kappa'
        h=legend([num2str(Multiple(1)),' {\itκ}'],...
                 [num2str(Multiple(2)),' {\itκ}'],...
                 [num2str(Multiple(3)),' {\itκ}'],...
                 [num2str(Multiple(4)),' {\itκ}'],...
                 [num2str(Multiple(5)),' {\itκ}'],'Location','northeast');
    case 't_plus'
        h=legend([num2str(Multiple(1)),' {\itt}_{0+}'],...
                 [num2str(Multiple(2)),' {\itt}_{0+}'],...
                 [num2str(Multiple(3)),' {\itt}_{0+}'],...
                 [num2str(Multiple(4)),' {\itt}_{0+}'],...
                 [num2str(Multiple(5)),' {\itt}_{0+}'],'Location','northeast');
    case 'T'
        Multiple_T = 25 + Multiple;
        h=legend([num2str(Multiple_T(1)),' °C'],...
                 [num2str(Multiple_T(2)),' °C'],...
                 [num2str(Multiple_T(3)),' °C'],...
                 [num2str(Multiple_T(4)),' °C'],...
                 [num2str(Multiple_T(5)),' °C'],'Location','northeast');
end
set(h,'FontName','Times New Roman','FontSize',15,'FontWeight','normal')

switch input
    case 'Ds_neg'
        title('No Figure (b) {\itD}_{s1}')
    case 'rs_neg'
        title('No Figure (d) {\itr}_{s1}')
    case 'k_neg'
        title('No Figure (f) {\itk}_{1}')
    case 'rou_sei_neg'
        title('No Figure (h) {\itρ}_{sei1}')
    case 'L_neg'
        title('No Figure (b) {\itL}_{3}')
    case 'epse_neg'
        title('No Figure (d) {\itε}_{e3}')
    case 'sigma_neg'
        title('No Figure (f) {\itσ}')
    case 'De'
        title('No Figure (b) {\itD}_e')
    case 'kappa'
        title('No Figure (d) {\itκ}')
    case 't_plus'
        title('No Figure (f) {\itt}_{0+}')
    case 'T'
        title('No Figure (b) {\itT}')
end

%% data pasted into Origin
Origin = [out{1,1}.ZD.Nyquist_Ds_neg...   % Z_Ds1
          out{2,1}.ZD.Nyquist_Ds_neg...
          out{3,1}.ZD.Nyquist_Ds_neg...
          out{4,1}.ZD.Nyquist_Ds_neg...
          out{5,1}.ZD.Nyquist_Ds_neg...
          out{1,1}.ZD.Nyquist_De_neg...   % Z_De1
          out{2,1}.ZD.Nyquist_De_neg...
          out{3,1}.ZD.Nyquist_De_neg...
          out{4,1}.ZD.Nyquist_De_neg...
          out{5,1}.ZD.Nyquist_De_neg...
          out{1,1}.ZD.Nyquist_De_sep...   % Z_De3
          out{2,1}.ZD.Nyquist_De_sep...
          out{3,1}.ZD.Nyquist_De_sep...
          out{4,1}.ZD.Nyquist_De_sep...
          out{5,1}.ZD.Nyquist_De_sep] * 1e3;

end
