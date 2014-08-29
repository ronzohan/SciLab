function gauss(coefficient_m,constant_m)
    is_square = isSquareMatrix(coefficient_m);
    if is_square == 0 then
        printf("Not a square matrix");
        return;
    end
    
    is_compatible = isCompatible(coefficient_m,constant_m)
    if is_compatible == 0 then
        printf("Incompatible matrices size");
        return;
    end
    
    mtrx_size = size(coefficient_m);
    n = mtrx_size(1,1);
    constant_size = size(constant_m);
    L=eye(n,n);
    M=coefficient_m;
    C = constant_m;
    disp("Augmented Matrix");
    disp([M C])
    //forward elimination    
    for k=1:n-1
        for i = k+1:n
            pivot = M(i,k)/M(k,k);
             
            for j = k+1:n
                M(i,k) = 0
                M(i,j) = M(i,j)-(pivot*M(k,j));
            end
            //for constant_m
            C(i) = C(i) - (pivot * C(k));
        end
    end
    
    disp([M C],"Upper Triangular Matrix");
    //back substitution
    for i=n:-1:1
        x(i) = C(i)/M(i,i);    
        for j=1:n-1
            C(j) = C(j) - (x(i) *M(j,i))
        end
    end
 
    disp("Solution Matrix")
    disp(x)
    

endfunction

//checks if the matrix is a square matrix
function is_square = isSquareMatrix(input_matrix)
    m = size(input_matrix)
    if m(1) == m(2) then
        is_square = 1
    else
        is_square = 0
    end
endfunction

//checks if the input matrices are dimensionally compatible
function is_compatible = isCompatible(coefficient_m,constant_m)
    coefficient_dim = size(coefficient_m);//dimensions of the matrices
    constant_dim = size(constant_m);
    
    if coefficient_dim(2) == constant_dim(1)  then
        is_compatible = 1;
    else 
        is_compatible = 0;
    end
endfunction
//SAMPLE
//matA = [25 5 1; 64 8 1; 144 12 1]
//matB = [106.8; 177.2; 279.2]
//gauss(matA,matB)
