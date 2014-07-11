inputCount = input("Enter how many elements:")
 
printf("\nEnter %i random integers:",inputCount)

//input elements
for i=1:inputCount
    numArray(i) = input("")
end

printf("Initial:")
for i=1:inputCount
       printf("%i ",numArray(i))
end
printf("\n")
swapped = 1  //set swapped to true
loopNum = 0

//this is where the magic happens -.-
while (swapped ==1)
    swapped = 0;
    loopNum = loopNum +1
    printf("Loop #%i: ",loopNum)
    for x=1:inputCount-1
        if numArray(x) > numArray(x+1) then
            temp = numArray(x)
            numArray(x) = numArray(x+1)
            numArray(x+1) = temp
            swapped = 1           
        end
         
    end
    //displaying each iteration
     for i=1:inputCount
        printf("%i ",numArray(i))
    end
    printf("\n")
end

//display final output
printf("  Final: ")
for i=1:inputCount
    printf("%i ",numArray(i))
end

