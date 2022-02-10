%init file 

%wayPoints = [0.2 -0.2 0.02;0.25 0 0.15; 0.2 0.2 0.02]; % Alternate set of wayPoints
wayPoints = [0.1 0 0; 0.25 0.2 0; 0.5 0.5 0; 0.75 0 0]; 
%0 0.5 0.75 0.75 1.5 0.75 2 0.5

wayPointVels = [0.1 0.1 0;0.1 0.1 0; 0.1 0.1 0;0.1 0.1 0];
        
numTotalPoints = size(wayPoints,1)*100;
waypointTime = 4;

wpTimes = (0:size(wayPoints,1)-1)*waypointTime;
trajTimes = linspace(0,wpTimes(end),numTotalPoints);
trajectory = bsplinepolytraj(wayPoints',wpTimes,trajTimes);
                 
  hold on
plot3(trajectory(1,:),trajectory(2,:),trajectory(3,:),'r-','LineWidth',2);
%i = 1;
