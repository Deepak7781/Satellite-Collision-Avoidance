
tle_file = '\data\debris\iridium33_deb.tle';

mission = mission_definition();
    
scenario = createScenario(mission);
    
YPSAT = createSat(scenario, mission);
    
debris = createDebris(scenario, tle_file);

[tca, missDistance, isRequired] = plan_avoidance_maneuver(YPSAT, debris);

if isRequired
    fprintf("Avoidance Maneuver is Required\n");
end


% maneuverTime = tca - minutes(30);

