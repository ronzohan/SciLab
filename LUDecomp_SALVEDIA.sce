function lu_solve(coefficient_m,constant_m)
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
    L=eye(n,n);
    U=coefficient_m;
    C=constant_m;
     //forward elimination or decompoition phase
    for k=1:n-1
       //solving for lower triangular matrix
       for i=k+1:n //for(i = k+1; i <=n; i++)
           pivot = U(i,k)/U(k,k);
           //mprintf("i = %d\nk = %d", i, k)
           L(i,k) = pivot;
           //disp(L)
           //disp(" ")
         //solving for the upper triangular matrix 
          for j=k+1:n
               U(i,k) = 0;
               U(i,j) = U(i,j)-(pivot*U(k,j));
               //mprintf("\ti = %d\n\tj = %d\n\tk = %d", i, j, k)
               //disp(U)
               //disp(" ")
          end
       end
    end
    
    disp("Lower Triangular Matrix: ")
    disp(L)
    disp("Upper Triangular Matrix: ")
    disp(U)
    
    //forward elim
    for k=1:n-1
        for i = k+1:n
            pivot = L(i,k)/L(k,k);
            for j = k+1:n
                L(i,k) = 0
                L(i,j) = L(i,j)-(pivot*L(k,j));
            end
            //for constant_m
            C(i) = C(i) - (pivot * C(k));
        end
    end
    
    //back sub
    for i=n:-1:1
        x(i) = C(i)/U(i,i);    
        for j=1:n-1
            C(j) = C(j) - (x(i) *U(j,i))
        end
    end
    
    
    disp("Solution Matrix:")
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
//lu_solve(matA,matB)
