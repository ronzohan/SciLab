disp("Input 10 number:")
n = 10 //number of inputs
for i=1:n
    x(i) = input('')
end
even_sum = 0 //variable for all the sum of even nos.
even_count = 0 //count for even numbers recorded
odd_sum = 0  //variable for all the sum of odd nos.
odd_count = 0  //count for even numbers recorded
for i=1:n
    if modulo(x(i),2) == 0 then
        even_count = even_count+1; //add a count if an even number is seen
        even_nos(even_count) = x(i); //put it in a list for a later use
        even_sum = even_sum + x(i); //calc the partial sum of even nos.
    else
        odd_count = odd_count+1; //add a count if an odd number is seen
        odd_nos(odd_count) = x(i); //put it in a list for a later use
        odd_sum = odd_sum + x(i);  //calc the partial sum of even nos.
    end
end
//sample here
//sample4
//note, disp is LIFO(Last In,First Out) in its arguments
disp(even_nos,"List of even nos.")
disp(even_sum,"Sum of even numbers:")
disp(odd_nos,"List of odd nos.")
disp(odd_sum,"Sum of odd numbers:")


