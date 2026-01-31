
function [tca, missDistance, isRequired] = plan_avoidance_maneuver(tle_file)
% Function to check if the avoidance maneuver is required or not
    mission = mission_definition();
    
    scenario = createScenario(mission);
    
    YPSAT = createSat(scenario, mission);
    
    debris = createDebris(scenario, tle_file);
    
    [tca, missDistance] = detect_conjunctions(YPSAT, debris);
    
    safeDistance = 40e3;
    
    if missDistance < safeDistance
        isRequired = true;
    end
end