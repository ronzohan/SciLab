function root = raphson(xi,e,f,fp,maxiter)
    
    disp("Iterations    Xi        f(x)                           f''(x)              Approximate Error ");
    for i=0:maxiter
        x = xi;
        x_f = evstr(f); //evaluate func f
        x_fp = evstr(fp); //evaluate derivative of func f
        
           
        xnew = xi - (x_f/x_fp);
        approximateError = abs((xnew-xi)/xnew);
         
     
        s =sprintf("%d           %f    %f     %f     %f",i,xi,x_f,x_fp,approximateError);
            disp(s);
         xi = xnew;
     
        
        if (i==maxiter) disp("Change Initial Values. Slowly Converges.");end
        if (xi == 0) disp("Xi is the root");break;end
        if (xi > max_value) disp("Divergent. Rearrange Formula.");break;end
        if (fp == 0) disp("Division by zero. Change initial guess.");break;end
        if (approximateError <= e) break;end
    end
    
    s = sprintf("#Iterations: %d  Root = %f\n",i,xi);
    disp(s);
    root = xi;e
endfunction
