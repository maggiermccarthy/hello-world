% method for solving depth vs. time of a storage tank
clf % clears existing data

% assign constants
A=1250; % surface area m^2
Q=450; % flow rate m^3/d
t=0:dt:10; % time vector with 0.5 day intervals
dt=0.5; % time interval day(s)
y=zeros(size(t)); % makes array of zeros the size of t
y(1)=0; % setting initial condition of (0,0)
n=numel(y); % giving the number of elements in the array (y)

% solution using dydt, creating for loop to iterate over t=0 to 10 days
dydt=3*(Q/A)*(sin(t).^2)-(Q/A); % dydt given for the problem
for i=1: n-1 % setting the constraints of the for loop
    y(i+1)=y(i)+dydt(i)*dt; % simplified version of Euler's Method
end

% plotting the results 
figure(1) % opening a figure
plot(t,y) % telling code which data to plot
xlabel('Time (days)') % giving x axis a label
ylabel('Depth (meters)') % giving y axis a label
title('Graphical Solutions for Depth vs. Time for a Storage Tank') % giving the plot a title