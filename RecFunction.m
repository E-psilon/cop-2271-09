disp('Enter your starting coordinates below');
disp('Latitude should be between -180 and 180 degrees');
disp('Longitude should be between -90 and 90 degrees');
fprintf('\n');
phi_1 = input('Enter latitudinal coordinate: ');
lam_1 = input('Enter longitudinal coordinate: ');
disp('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
disp('Enter your destination coordinates below');
phi_2 = input('Enter latitudinal coordinate: ');
lam_2 = input('Enter longitudinal coordinate: ');

function[d, phi_mid, lam_mid] = RecFunctions(phi_1, phi_2, lam_1, lam_2)
phi_1 = phi_1*(pi/180);
phi_2 = phi_2*(pi/180);
lam_1 = lam_1*(pi/180);
lam_2 = lam_2*(pi/180);

r = 6.37E6; %earths radius
inside1 = sin((phi_2-phi_1)/2)*sin((phi_2-phi_1)/2);
inside2 = cos(phi_1)*cos(phi_2);
inside3 = sin((lam_2-lam_1)/2)*sin((lam_2-lam_1)/2);

d = 2*r*asin(sqrt(inside1+inside2*inside3));
d = d/1000;

%find midpoint
B_x = cos(phi_2)*cos(lam_2-lam_1);
B_y = cos(phi_2)*sin(lam_2-lam_1);

y_phi = sin(phi_1)+sin(phi_2);
x_phi = sqrt((cos(phi_1)+B_x)^2 + B_y^2);
phi_mid = atan2(y_phi,x_phi);

x_lam = cos(phi_1)+B_x;
lam_mid = lam_1 + atan2(B_y,x_lam); 
%phi_mid is the latitude coordinate of midpoint and lam_mid is longitude coordinate
end