function[phi_mid, lam_mid] = midpoint(phi_1, phi_2, lam_1, lam_2)
B_x = cos(phi_2)*cos(lam_2-lam_1);
B_y = cos(phi_2)*sin(lam_2-lam_1);

y_phi = sin(phi_1)+sin(phi_2);
x_phi = sqrt((cos(phi_1)+B_x)^2 + B_y^2);
phi_mid = atan2(y_phi,x_phi);

x_lam = cos(phi_1)+B_x;
lam_mid = lam_1 + atan2(B_y,x_lam);
end