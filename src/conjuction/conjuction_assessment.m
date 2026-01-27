

tle_file = '\data\debris\iridium33_deb.tle';

mission = mission_definition();

scenario = createScenario(mission);

YPSAT = createSat(scenario, mission);

debris = createDebris(scenario, tle_file);

[windows, minRange] = detect_conjuctions(YPSAT, debris);

disp(windows);
disp(minRange);

play(scenario)