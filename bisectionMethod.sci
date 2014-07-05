function bisectionMethod(funExp,x_lower,x_upper)
    allowedPercentError = 0.0005; //allowed percent error
    percentError = 100; //percent error
    x_temp = 0; //temporary storage for x

    if (x_lower > x_upper) then //if x_lower is greater than x_upper then swap it
        x_temp = x_upper;
        x_upper = x_lower;
        x_lower = x_temp;
    end

    x = x_lower;
    y = x_upper;
    midpoint = y;
    
if (isValid(funExp,x,y) == 1) then
   
    while (1) //loop infinitely until break is found
        //-----------------------
            midpoint = y;
            xAns = evstr(funExp);
        //check percentError
            percentError = ((midpoint-x)/midpoint)*100; //calculate percent error
             
            if percentError <= allowedPercentError then
                break;
            end
        //------------------------    
        //if percent error is still not enough get midpoint
            midpoint = (x+y)/2
            x_temp = x;
            x=midpoint;
            midpointAns = evstr(funExp);
            x = x_temp;
        //------------------------
            if xAns == 0 then
                midpoint = x;
                break;
            end
            if (xAns * midpointAns)<0  then
                x_upper = midpoint;
            else 
                x_lower = midpoint;    
            end,
            x = x_lower;
            y = x_upper;
          
         
        
    end
        disp(midpoint,"Answer");
    else
        disp("No answer.");
    end
endfunction;

function [isValid] = isValid(funExp,x_lower,x_upper)
    x = x_lower;
     x_lower = evstr(funExp);
    x = x_upper;
    x_upper = evstr(funExp);
     if (x_lower * x_upper) > 0 then
        isValid = 0;
    else
         isValid = 1;
    end
endfunction;
