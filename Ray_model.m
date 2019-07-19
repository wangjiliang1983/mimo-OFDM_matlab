function [ H ] = Ray_model( L )
%RAY_MODEL
%input
%    L    : channel number
%output
%    H    : xing dao vector
H = (randn(1,L) + j*randn(1,L))/sqrt(2);


end

