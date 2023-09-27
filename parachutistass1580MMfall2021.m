% different methods for solving velocity vs. time of falling parachutist
clf % clears data, good thing to do at start of new script 

% assign constants
g=9.81; % acceleration due to grav m/s^2
m=68.1; % mass of man kg
c=12.5; % drag coeff kg/s
t=0:0.1:25; % time vector with 0.1 intervals
dt=0.1; % time interval sec

% analytical method
v=g*m*(1-exp(-c*t/m))/c; % analytical solution to velocity equation
% v is an array of 251, every element being an answer

% numerical method
vn=zeros(1,length(t)); % defining velocity vector size
% defining array length of 251 (t)
vn(1)=0; % define initial velocity as 0 in order to solve equation
% need to use the "old" velocity value
for i=1:length(vn)-1 % for loop iterating over 250/251 elements
    dvdt=g-(c*vn(i)/m); % slope, previous time point value divided by m
    vn(i+1)=vn(i)+dvdt*dt; % estimation of velocity, using Euler's method
end

% plotting the results 
figure(1) % opening a figure
plot(t,v,t,vn) % telling code which data to plot
xlabel('Time (sec)') % giving x axis a label
ylabel('Velocity (m/s)') % giving y axis a label
title('Graphical Solutions for Velocity vs. Time for a Parachutist') % giving the plot a title
legend('Analytical','Numerical') % defining the elements of the legend




