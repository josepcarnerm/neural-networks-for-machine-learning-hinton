function G = configuration_goodness(rbm_w, visible_state, hidden_state)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_state> is a binary matrix of size <number of visible units> by <number of configurations that we're handling in parallel>.
% <hidden_state> is a binary matrix of size <number of hidden units> by <number of configurations that we're handling in parallel>.
% This returns a scalar: the mean over cases of the goodness (negative energy) of the described configurations.

    N = size(hidden_state, 2);
    Gs = zeros(1,N);
    
    for n = 1:N
        a = hidden_state(:,n)*(visible_state(:,n)');
        Gs(n) = sum(sum(a.*rbm_w));
    end

    G = mean(Gs,2);
end
