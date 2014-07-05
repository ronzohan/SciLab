function bisectionMethod(funExp,x_lower,x_upper)
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
    
    if (xAns) then
    end
while (1) //loop infinitely until break is found
//-----------------------
    midpoint = y;
    xAns = evstr(funExp);
    x_temp = x;
    x=y;
    yAns = evstr(funExp);
    x = x_temp;*/  
//-----------------------
//check percentError
    percentError = ((midpoint-x)/midpoint)*100 //calculate percent error
    if percentError <= 0.0005 then
        break;
    end
//------------------------    
//if percent error is still not enough get midpoint
    midpoint = (x+y)/2
    x_temp = x;
    x=midpoint;
    midpointAns = evstr(funExp);
//------------------------
    if (xAns * midpointAns)<0  then
        x_upper = midpoint;
    else 
        x_lower = midpoint;    
    end,
    x = x_lower;
    y = x_upper;
  
end
disp(midpoint,"Answer");
endfunction;




