
% Get mission specifications from mission_definition function
mission = mission_definition();

% Unpack the scenario details
startTime = mission.startDate;
endTime = mission.endDate;
sampleTime = 20;

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


play(scenario);