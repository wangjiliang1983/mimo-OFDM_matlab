function [ H ] = Ric_model( k_dB,L )
%RIC_MODEL
%input
%    K_dB  :  Kyinzi[dB]
%    L     :  xindao shixian shu
%output
%    H     :  xindao vector
K = 10^(k_dB/10);
H = sqrt(K/(K+1)) + sqrt(1/(K+1))*Ray_model(L);

end

