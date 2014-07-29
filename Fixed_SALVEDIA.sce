function root = fpoint(func,xi,ea,maxiter)
 
    max_value = 10000;
    i=0;
    if (i==maxiter) disp("Change Initial Values. Slowly Converges.");end
    
    if (xi == 0) disp("Xi is the root");break;end
    
    if (xi > max_value) disp("Divergent. Rearrange Formula.");break;end
    root = max_value;
endfunction
