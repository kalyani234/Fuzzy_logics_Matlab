%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB Code Generated with Fuzzy Logic Designer App                     %
%                                                                         %
% Date: 25-Jul-2024 23:58:11                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Construct FIS
AAL_FLC4_latest = mamfis(Name="AAL_FLC4_latest");

% Define Input Variables and Membership Functions
% Input 1: Ambient Temperature
AAL_FLC4_latest = addInput(AAL_FLC4_latest, [0 40], Name="AmbientTemperature");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "AmbientTemperature", "trapmf", [0 0 10 15], Name="Cold");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "AmbientTemperature", "trimf", [10 20 30], Name="Comfortable");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "AmbientTemperature", "trapmf", [25 30 40 40], Name="Hot");

% Input 2: Light Level
AAL_FLC4_latest = addInput(AAL_FLC4_latest, [0 2000], Name="LightLevel");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "LightLevel", "trapmf", [0 0 50 100], Name="Dark");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "LightLevel", "trimf", [50 500 1000], Name="Moderate");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "LightLevel", "trapmf", [1000 1500 2000 2000], Name="VeryBright");

% Input 3: Time of Day
AAL_FLC4_latest = addInput(AAL_FLC4_latest, [0 24], Name="TimeOfDay");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "TimeOfDay", "trapmf", [0 0 6 7], Name="EarlyMorning");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "TimeOfDay", "trimf", [6 12 18], Name="Day");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "TimeOfDay", "trapmf", [18 20 24 24], Name="Night");

% Input 4: User Activity Level
AAL_FLC4_latest = addInput(AAL_FLC4_latest, [0 10], Name="UserActivityLevel");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "UserActivityLevel", "trapmf", [0 0 2 4], Name="Low");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "UserActivityLevel", "trimf", [3 5 7], Name="Medium");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "UserActivityLevel", "trapmf", [6 8 10 10], Name="High");

% Input 5: Motion Detection
AAL_FLC4_latest = addInput(AAL_FLC4_latest, [0 1], Name="MotionDetection");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "MotionDetection", "trapmf", [0 0 0 0], Name="NoMotion");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "MotionDetection", "trapmf", [0 1 1 1], Name="MotionDetected");

% Define Output Variables and Membership Functions
% Output 1: Heater Level
AAL_FLC4_latest = addOutput(AAL_FLC4_latest, [0 100], Name="HeaterLevel");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "HeaterLevel", "trapmf", [0 0 10 20], Name="Off");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "HeaterLevel", "trimf", [10 30 50], Name="Low");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "HeaterLevel", "trimf", [40 60 80], Name="Medium");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "HeaterLevel", "trapmf", [70 90 100 100], Name="High");

% Output 2: Cooler Level
AAL_FLC4_latest = addOutput(AAL_FLC4_latest, [0 100], Name="CoolerLevel");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "CoolerLevel", "trapmf", [0 0 10 20], Name="Off");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "CoolerLevel", "trimf", [10 30 50], Name="Low");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "CoolerLevel", "trimf", [40 60 80], Name="Medium");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "CoolerLevel", "trapmf", [70 90 100 100], Name="High");

% Output 3: Blinds Position
AAL_FLC4_latest = addOutput(AAL_FLC4_latest, [0 100], Name="BlindsPosition");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "BlindsPosition", "trapmf", [0 0 10 20], Name="Closed");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "BlindsPosition", "trimf", [10 50 80], Name="PartiallyOpen");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "BlindsPosition", "trapmf", [70 90 100 100], Name="FullyOpen");

% Output 4: Light Dimmer Level
AAL_FLC4_latest = addOutput(AAL_FLC4_latest, [0 100], Name="LightDimmerLevel");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "LightDimmerLevel", "trapmf", [0 0 10 20], Name="Off");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "LightDimmerLevel", "trimf", [10 30 50], Name="Low");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "LightDimmerLevel", "trimf", [40 60 80], Name="Medium");
AAL_FLC4_latest = addMF(AAL_FLC4_latest, "LightDimmerLevel", "trapmf", [70 90 100 100], Name="High");

% Define Fuzzy Rules
ruleList = [...
    1 0 1 0 0 4 0 0 0 1 1; ... % Rule 1
    2 1 0 0 0 0 0 0 4 1 1; ... % Rule 2
    0 1 0 0 2 0 0 0 4 1 1; ... % Rule 3
    0 3 0 0 2 0 0 1 0 1 1; ... % Rule 4
    0 0 3 0 1 0 0 0 1 1 1; ... % Rule 5
    3 0 0 1 0 0 3 0 0 1 1; ... % Rule 6
    0 0 0 0 2 1 0 0 0 1 1; ... % Rule 7
    0 2 2 0 0 0 0 2 0 1 1; ... % Rule 8
    3 3 0 0 0 0 0 1 0 1 1; ... % Rule 9
    0 0 2 0 1 0 0 1 0 1 1; ... % Rule 10
    1 0 3 0 0 3 0 0 0 1 1; ... % Rule 11
    1 0 0 0 2 0 0 0 3 1 1; ... % Rule 12
    1 0 0 1 0 1 0 0 0 1 1; ... % Rule 13
    0 0 0 3 2 0 0 3 0 1 1; ... % Rule 14
    0 0 3 1 0 0 0 0 1 1 1; ... % Rule 15
    0 0 2 0 2 0 0 0 2 1 1; ... % Rule 16
    1 0 1 0 0 0 0 0 3 1 1; ... % Rule 17
    0 3 0 0 2 0 0 2 0 1 1; ... % Rule 18
    2 1 0 0 0 0 0 0 4 1 1; ... % Rule 19
    1 0 1 0 0 0 0 0 4 1 1];    % Rule 20

AAL_FLC4_latest = addRule(AAL_FLC4_latest, ruleList);

% Set Defuzzification Method: Centroid
AAL_FLC4_latest.DefuzzMethod = 'centroid';

% Simulate FIS with example inputs
inputs = [20 1000 12 5 0]; % Example input values for AmbientTemperature, LightLevel, TimeOfDay, UserActivityLevel, MotionDetection
output = evalfis(AAL_FLC4_latest, inputs);

% % Simulate FIS with example inputs
% inputs = [30 1500 8 10 1]; % Example input values for AmbientTemperature, LightLevel, TimeOfDay, UserActivityLevel, MotionDetection
% output = evalfis(AAL_FLC4_latest, inputs);

% % Define Fuzzy Input Values (example)
% inputs = [30 1500 8 10 1]; % Example input values for AmbientTemperature, LightLevel, TimeOfDay, UserActivityLevel, MotionDetection

% Evaluate FIS with the example inputs
output = evalfis(AAL_FLC4_latest, inputs);

% Display the defuzzified output
disp('Fuzzy Output:');
disp(output);

% Plot FIS and Membership Functions
figure;
plotfis(AAL_FLC4_latest);
title('Fuzzy Inference System Structure');

figure;
subplot(3,2,1);
plotmf(AAL_FLC4_latest, 'input', 1);
title('Ambient Temperature');

subplot(3,2,2);
plotmf(AAL_FLC4_latest, 'input', 2);
title('Light Level');

subplot(3,2,3);
plotmf(AAL_FLC4_latest, 'input', 3);
title('Time of Day');

subplot(3,2,4);
plotmf(AAL_FLC4_latest, 'input', 4);
title('User Activity Level');

subplot(3,2,5);
plotmf(AAL_FLC4_latest, 'input', 5);
title('Motion Detection');

% Plot output membership functions
figure;
subplot(2,2,1);
plotmf(AAL_FLC4_latest, 'output', 1);
title('Heater Level');

subplot(2,2,2);
plotmf(AAL_FLC4_latest, 'output', 2);
title('Cooler Level');

subplot(2,2,3);
plotmf(AAL_FLC4_latest, 'output', 3);
title('Blinds Position');

subplot(2,2,4);
plotmf(AAL_FLC4_latest, 'output', 4);
title('Light Dimmer Level');

% Show control surfaces for key relationships
figure;
gensurf(AAL_FLC4_latest, [1 3], 1); % Heater Level vs Ambient Temperature and Time of Day
title('Control Surface: Heater Level vs Ambient Temperature and Time of Day');

figure;
gensurf(AAL_FLC4_latest, [2 5], 4); % Light Dimmer Level vs Light Level and Motion Detection
title('Control Surface: Light Dimmer Level vs Light Level and Motion Detection');

figure;
gensurf(AAL_FLC4_latest, [3 4], 3); % Blinds Position vs Time of Day and User Activity Level
title('Control Surface: Blinds Position vs Time of Day and User Activity Level');
