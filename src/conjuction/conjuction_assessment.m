

tle_file = '\data\debris\iridium33_deb.tle';

mission = mission_definition();

[scenario, YPSAT] = createSat(mission);

[~, debris] = createDebris(mission, tle_file);


play(scenario)