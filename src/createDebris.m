
function [scenario, debris] = createDebris(mission, tlefile)

    startTime = mission.startDate;
    stopTime = mission.endDate;

    scenario = satelliteScenario(startTime, stopTime, 20);

    debris = satellite(scenario, tlefile);


end