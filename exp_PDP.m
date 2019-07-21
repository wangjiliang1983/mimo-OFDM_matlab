function [ PDP ] = exp_PDP( tau_d, Ts, A_dB, norm_flag )
%EXP_PDP
%input
%    tau_d     : RMS time delay expansion[s]
%    Ts        : sample time[s]
%    A_dB      : miniman power[dB]
%    norm_flag : normalize
%outptu
%    PDP       : PDP vector
if nargin <4, norm_flag = 1; end
if nargin < 3, A_dB = -20; end
sigma_tau = tau_d;
A = 10^(A_dB/10);
lmax = ceil(-tau_d*log(A)/Ts);
% calculate normalization
if norm_flag
    p0 = (1-exp(-Ts/sigma_tau))/(1-exp(-(lmax+1)*Ts/sigma_tau));
else
    p0 = 1/sigma_tau;
end
%exp PDP
l=0:lmax;
PDP = p0*exp(-l*Ts/sigma_tau);

end

