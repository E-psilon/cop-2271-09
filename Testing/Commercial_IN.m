
function[D,latmid,lonmid,duration,Predictedfuel]= Commercial_IN(initial,final,fuelburn,cruising)

%Inputs for coordinates

%Haversine Calc:

R=6371; %km

lat1=initial(1)*pi/180;
lon1=initial(2)*pi/180;

lat2=final(1)*pi/180;
lon2=final(2)*pi/180;

dlat=lat2-lat1;
dlon=lon2-lon1;

A=sin(dlat/2)^2+cos(lat1)*cos(lat2)*sin(dlon/2)^2;
C=2*atan(sqrt(A)/sqrt(1-A));

D=R*C/1.852; %distance in knotts

%%%%%

B_x = cos(lat2)*cos(lon2-lon1);
B_y = cos(lat2)*sin(lon2-lon1);

y_phi = sin(lat1)+sin(lat2);
x_phi = sqrt((cos(lat1)+B_x)^2 + B_y^2);
latmid = atan2(y_phi,x_phi);

x_lam = cos(lat1)+B_x;
lonmid = lon1 + atan2(B_y,x_lam); 
%phi_mid is the latitude coordinate of midpoint and lam_mid is longitude coordinate

% Duration /Predicted Fuel calc

duration=D/cruising ;%in hours

Predictedfuel= duration*fuelburn; %Gallons

end
