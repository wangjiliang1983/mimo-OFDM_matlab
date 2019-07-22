function [ PDP ] = IEEE802_11_model( sigma_tau,Ts )
%IEEE802_11_MODEL Summary of this function goes here
%Input
%    sigma_tau     : RMS time expansion
%    Ts            : Sample time
%Output
%    PDP           : time delay
lmax = ceil(10*sigma_tau/Ts);
sigma02=(1-exp(-Ts/sigma_tau))/(1-exp(-(lmax+1)*Ts/sigma_tau));
l=0:lmax;
PDP = sigma02*exp(-l*Ts/sigma_tau);

end

