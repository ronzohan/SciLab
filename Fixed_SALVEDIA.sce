function root = fpoint(func,xi,e,maxiter)
 
    max_value = 10000;  //max values??
    disp("Iterations   Root     g(x)   Approximate Error ");
     for i=0:maxiter 
            x = xi;
            xnew = evstr(func); //evaluates the function with value of xi
            
            approximateError = abs((xnew-xi)/xnew);
           
            
            s = sprintf("%d        %f    %f     %f",i,xi,xnew,approximateError);
            disp(s);
            
             xi = xnew;
            
           
            if (i==maxiter) disp("Change Initial Values. Slowly Converges.");end
            
            if (xi == 0) disp("Xi is the root");break;end
            
            if (xi > max_value) disp("Divergent. Rearrange Formula.");break;end
            
             if (approximateError <= e) break;end
      end
        
    s = sprintf("#Iterations: %d  Root = %f\n",i,xi);
    disp(s);
    root = xi
endfunction
