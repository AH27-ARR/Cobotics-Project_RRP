function [th, th2, p_r] = IKP_RRP(x, y, z)
    r1 = 45; 
    r2 = 20; 
    
    % Find th1
    r=sqrt((x^2) + (y^2));
    al_c=r2/r;
    al = asin(al_c);
    phi = atan2(y, x);
    th11_c = phi - al;
    Th1_approx = rad2deg(th11_c);
    th = round(Th1_approx);

    % Find th2
    % r_z=sqrt((r^2) - (r2^2));
    cal = abs(z-r1);
    calcs = cal/50;
    th12_c = rad2deg(asin(calcs));
    th2 = round(th12_c);
    r_2=sqrt((x^2) + (y^2));
 
 
    % Prismatic joint extension p
    % p = abs(sqrt((r_2*cos(asin(calcs)))^2 + (z-r1)^2));
    p = abs(sqrt((50+x)^2 + (45)^2)-sqrt((50)^2+(z-r1)^2));
  
    p_r = round(p);   
end
