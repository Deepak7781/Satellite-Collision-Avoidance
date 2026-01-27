
% Get mission specifications from mission_definition function
mission = mission_definition();

% Use the function created to create a scenario and satellite
[scenario,YPSAT] = createSat(mission);
YPSAT.MarkerColor = [1 0 1];

% Simulation of the scenario
play(scenario);

% Satellie Information
disp("Satellite Information");
fprintf("Name of the Satellite : %s\n",YPSAT.Name);
fprintf("Orbit Propagator : %s\n", YPSAT.OrbitPropagator);