%% Shock Absorber Analysis for Suspension System
% This MATLAB script analyzes three different shock absorber configurations
% to determine the optimal choice for a suspension system.
% Course: Differential Equations Project

clc;
clear;

t = 1; %% Condition for first iteration of loop

while t == 1 %% While loop so program continues till user wants
    
    %% Displaying Group Information
    fprintf('\n\nSoftware House:\t\tThe Nebula Webb\n\nAalyan Raza\t\t22I-0833\nAnas Bin Rashid\t\t22I-0907\nNajamuddin Hassan\t22I-1332\n\n');
    
    %% Press Any Key to Continue Prompt
    fprintf("\nPress any key to continue: ");
    pause;
    
    %% Define the ODE for first shock as well as define Initial Conditions
    syms x(t)
    ode1 = 1800*diff(x, t, t) + 100*diff(x, t) + 220*x == 0;
    xprime = diff(x);
    ic = [x(0)==0.030, xprime(0)==0];
    
    %% Solve the ODE for first shock using dsolve
    sol1 = dsolve(ode1, ic);
    
    %% Displaying Solution for first shock
    fprintf("\n\nFirst Shock:\t")
    disp(sol1)
    
    %% Create figure for plotting
    figure;
    
    %% Plotting Graph for First Shock
    fplot(sol1, [0, 200], 'b-', 'LineWidth', 2);
    hold on;
    
    %% Define the ODE for second shock as well as define Initial Conditions
    syms x(t)
    ode2 = 1800*diff(x, t, t) + 1050*diff(x, t) + 59*x == 0;
    xprime = diff(x);
    ic = [x(0)==0.030, xprime(0)==0];
    
    %% Solve the ODE for second shock using dsolve
    sol2 = dsolve(ode2, ic);
    
    %% Displaying Solution for second shock
    fprintf("\nSecond Shock:\t")
    disp(sol2)
    
    %% Plotting Graph for Second Shock
    fplot(sol2, [0, 200], 'y-', 'LineWidth', 2);
    hold on;
    
    %% Define the ODE for third shock as well as define Initial Conditions
    syms x(t)
    ode3 = 1800*diff(x, t, t) + 1110*diff(x, t) + 170*x == 0;
    xprime = diff(x);
    ic = [x(0)==0.030, xprime(0)==0];
    
    %% Solve the ODE for third shock using dsolve
    sol3 = dsolve(ode3, ic);
    
    %% Displaying Solution for third shock
    fprintf("\nThird Shock:\t")
    disp(sol3)
    
    %% Plotting Graph for Third Shock
    fplot(sol3, [0, 200], 'r-', 'LineWidth', 2);
    
    %% Format the plot
    title('Shock Absorber Response Comparison', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Time (seconds)', 'FontSize', 12);
    ylabel('Displacement (meters)', 'FontSize', 12);
    legend('Shock 1 (m=1800, c=100, k=220)', 'Shock 2 (m=1800, c=1050, k=59)', ...
           'Shock 3 (m=1800, c=1110, k=170)', 'Location', 'best');
    grid on;
    grid minor;
    
    %% Display analysis results
    fprintf('\n\n=== ANALYSIS RESULTS ===\n');
    fprintf('Based on the damping characteristics:\n');
    fprintf('- Shock 1: Underdamped oscillatory response\n');
    fprintf('- Shock 2: Overdamped response\n');
    fprintf('- Shock 3: Critically damped or near-critically damped response\n');
    fprintf('\nRecommendation: Shock 1 provides optimal damping characteristics\n');
    fprintf('for the suspension system application.\n');
    
    %% Input for next iteration of loop
    t = input('\nPress 1 if you wish to continue: ');
end

fprintf('\nProgram terminated. Thank you for using the Shock Absorber Analysis Tool!\n');