
% Get mission specifications from mission_definition function
mission = mission_definition();

% Unpack the scenario details
startTime = mission.startDate;
endTime = mission.endDate;
sampleTime = 20;

% Creating the scenario
scenario = satelliteScenario(startTime, endTime, sampleTime);

% Orbit Definiton
semiMajorAxis = mission.semimajoraxis;
eccentricity = mission.eccentricity;
inclination = mission.inclination;
RAAN = mission.RAAN;
argumentOfPerigee = mission.argumentOfPerigee;
trueAnomaly = mission.trueAnomaly;

% Adding YPSAT to the scenario
YPSAT = satellite(scenario, semiMajorAxis, eccentricity, inclination, RAAN, argumentOfPerigee, trueAnomaly,"Name","YPSAT");
YPSAT.MarkerColor = [1 0 1];

% Simulation of the scenario
play(scenario);

% Satellie Information
disp("Satellite Information");
fprintf("Name of the Satellite : %s\n",YPSAT.Name);
fprintf("Orbit Propagator : %s\n", YPSAT.OrbitPropagator);