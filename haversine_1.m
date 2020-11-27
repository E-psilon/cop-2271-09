function[d] = haversine_1(phi_1, phi_2, lam_1, lam_2)

r = 6.37E6;
inside1 = sin((phi_2-phi_1)/2)*sin((phi_2-phi_1)/2);
inside2 = cos(phi_1)*cos(phi_2);
inside3 = sin((lam_2-lam_1)/2)*sin((lam_2-lam_1)/2);

d = 2*r*arcsin(sqrt(inside1+inside2*inside3));
end