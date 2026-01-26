% Function for detecting the window of conjuctions

function [windows, minRange] = detect_conjuctions(YPSAT, debris)
    % YPSAT: staellite object, debris: satellite object
    
    % Finding the range between YPSAT and debris
    [~, ~, range, tout] = aer(YPSAT, debris);
    
    % Define the minimum distance between the satellite and debris
    dMin = 100e3;

    % Finding the index of the ranges less than minimum distance
    kCloseIdx = find(range < dMin);

    dW = [0 diff(kCloseIdx)];

    kWindow = zeros(2, length(kCloseIdx));
    j = 1;

    for m = 1:length(dW)
        if dW(m) ~= 1
            kWindow(1,j) = max(1, kCloseIdx(m) - 1);
            kWindow(2,j) = kCloseIdx(m) + 1;
            j = j + 1;
        elseif j > 1
            kWindow(2, j-1) = kCloseIdx(m) + 1;
        end
    end

    kWindow = kWindow(:, 1:j-1);
    
    windows = tout(kWindow);
    minRange = min(range);
end