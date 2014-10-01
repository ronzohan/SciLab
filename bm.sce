function root = bisection(xl,xu,es,imax)
    if ((exp(-xl) - xl)*(exp(-xu) - xu)) > 0 then
        disp('no bracket')
        return 
    end

for i=1:1:imax
    xr=(xu+xl)/2;
    ea = abs((xu-xl)/xl);
    
    if (test == 0) ea=0; end
    if (ea < es) break; end

end
//sample2
s=sprintf('\n Root= %f #Iterations = %d \n', xr, i); 
disp(s);
    
endfunction
