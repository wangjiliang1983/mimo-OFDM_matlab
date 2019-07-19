function [ PL ] = PL_logdist_or_norm( fc,d,d0,n,sigma )
%PL_LOGDIST_OR_NORM duijulihuoduishuyingyinglujinsunhaomoxing
%input
%    fc     : carrier frequency[Hz]
%    d      : distance between base station and user[m]
%    d0     : reference distance[m]
%    n      : distortion parameter
%    signma : fangcha[dB]
%output
%    PL     : lujinsunhao[dB]
lamda = 3e8/fc;
PL = -20*log10(lamda/(4*pi*d0)) + 10*n*log10(d/d0);
if nargin > 4
    PL = PL + sigma*randn(size(d));
end


end

