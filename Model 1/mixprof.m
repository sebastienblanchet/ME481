function [t, S] = mixprof(simt, mixt, coolt)
    
    % Get step 2 profile
    % Assume in increments of 30
    n = (simt/30)-1;

    t(1:(4*n+3)) = 0;
    S(1:(4*n+3)) = 0;

    C=1; 

    for i=2:4:length(t)-1
        
        t(i) = C*30;

        if i ~= length(t)-1
            t(i+1) = C*30;
            t(i+2) = C*30 + mixt;
            t(i+3) = C*30 + mixt;
            S(i+1) = 1;
            S(i+2) = 1;
        end

        C = C+1;

    end   
    
    t(length(t)) = simt + coolt;
    
end

