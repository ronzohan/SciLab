function root = bracketing(func,method,xl,xu,error,maxiter)    //method 1-bisection 2-regula falsi
    
    disp("Iterations X.lower    X.upper    Root      f(X L )    f(X R )    Approximate Error ");
    xr_old = 0;
    for i=0:maxiter
        x = xu;
        fxu = evstr(func); //Evaluate the function using the value at the right for the [xLeft,xRight] pair
        x = xl;
        fxl =  evstr(func);  //Evaluate the function using the value at the right for the [xLeft,xRight] pair
        
        if method == 1 then
            xr = (xu + xl)/2
        else 
            xr = ((xl*fxu) - (xu*fxl))/(fxu-fxl)  
        end
        
        x = xr;
        fxr = evstr(func); //evaluate the function using the value of xr
        
        approximateError = abs(((xr-xr_old)/xr)*100); //calculate percent error
        xr_old = xr;
        
        s = sprintf('%d        %f   %f   %f   %f   %f   %f',i,xl,xu,xr,fxl,fxr, approximateError);
        disp(s);
        
        if (fxl* fxr)<0  then
            xu = xr;
        else 
            xl = xr;
        end
        
        
         
        
        if (fxu * fxl > 0)  disp("Change initial values. Root is not enclose");break;end
        
        if (fxl == 0) disp("X_l is the root");break;end
        
        if (fxu == 0) disp("X_u is the root");break;end
        
        if (method == 2 & fxu - fxl == 0) disp("Division by zero.");break;end 
        
        if (approximateError <= ea) break;end
        
    end
    
    if (i == maxiter) disp("Change Initial Values. Slowly Converges"); end
    s = sprintf("#Iterations: %d  Root = %f\n",i,xr);
    disp(s);
    root = xr
    
endfunction
