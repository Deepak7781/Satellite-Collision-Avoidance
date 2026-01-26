mission = mission_definition();

startTime = mission.startDate;
endTime = mission.endDate;
sampleTime = 20;

scenario = satelliteScenario(startTime, endTime, sampleTime);

% Orbit Definiton



satelliteScenarioViewer(scenario);