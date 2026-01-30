
tle_file = '\data\debris\iridium33_deb.tle';

[tca, missDistance, isRequired] = plan_avoidance_maneuver(tle_file);

if isRequired
    fprintf("Avoidance Maneuver is Required\n");
end


maneuverTime = tca - minutes(30);

