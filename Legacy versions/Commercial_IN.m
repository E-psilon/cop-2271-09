clc;clear;

%Inputs for coordinates
initial=input('Please input your starting Latitude(-90,90) and Logitude(-180,180) in []: ');

if initial(1) < -90 || initial(1)>90 ||initial(2) < -180 ||initial(2) > 180
    fprintf('Please Enter coordinates within the domain \n');
else
    final=input('Please input your final Latitude(-90,90) and Logitude(-180,180) in []: ');
    if final(1) < -90 || final(1)>90 ||final(2) < -180 || final(2)>180
    fprintf('{Please enter coordinates within the domain')
    %D=error
    else 
        fuelburn=input('Please enter fuel burn in gallons/hour: ');
cruising=input('Please enter cruising speeed in Knots: ');
    end
end

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

D=R*C/1.852 %distance in knotts

%Midpoint=


% Duration /Predicted Fuel calc

duration=D/cruising ;%in hours

Predictedfuel= duration*fuelburn %Gallons

fprintf('Distance %g Fuel needed %g',D,Predictedfuel);