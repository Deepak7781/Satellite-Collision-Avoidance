% Function for detecting the window of conjuctions

function windows = detect_conjuctions(YPSAT, debris)
    % YPSAT: staellite object, debris: satellite object
    
    % Finding the range between YPSAT and debris
    [~, ~, range, tout] = aer(YPSAT, debris);
    
    % Define the minimum distance between the satellite and debris
    dMin = 100e3;

    % Finding the index of the ranges less than minimum distance
    kCloseIdx = find(range < dMin);

    dW = [0 diff(kCloseIdx)];


end