% part a
% solving for the exponential growth (mu) of cancer cell
clf % clears existing data

% assign constants
N0=1; % cell number at time t = 0 hours
N20=2; % cell number at time t = 20 hours
d=20; % cell doubling time in hours

% equation to solve for mu, the growth rate of the cancer cells
% dndt=muN -> N(t)=N0exp(u*t)
% N20=exp(20*u); % equation to solve for mu (u)
u=log(2)/20; % this comes out to be 0.0346

% part b
% rate of change of volume during exponential growth rate

%assign constants
di=20; % diameter in microns
vc=4/3*pi*di^3; % volume of one cancer cell

% after a series of calculations, eqn comes out to
dVdt=u*v(t); % rate of change of tumor volume during exp growth

% part c
% determine time for tumor to exceed diameter of 500 microns
% 500 mircons is when cells at the center start to die

% assign constants
td=500; % critical diameter size in microns
% tv=4/3*td^3*pi; % volume at time t=0
tv=(500/20)^3*vc; % volume at time t=0 cont.

% plug tv into ODE from before
% log(15625)=exp(u*t0); % beginning to solve for time
t0=(20*log(15625))/(log(2)); % solving for time
t=t0/24; % dividing ans by 24 to get answer in days
% t0=278.63.... converted to days is t=11.6096... rounded up to 12





