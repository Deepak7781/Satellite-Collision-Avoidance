
function [scenario,sat] = createSat(mission)

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
sat = satellite(scenario, semiMajorAxis, eccentricity, inclination, RAAN, argumentOfPerigee, trueAnomaly,"Name","YPSAT");

end