function result = matrix_multiplication(A, B)
    if columns(A) != rows(B)
        error("Number of columns in A must be equal to number of rows in B");
    end
    result = zeros(rows(A), columns(B));
    for i = 1:rows(A)
        for j = 1:columns(B)
            for k = 1:columns(A)
                result(i, j) += A(i, k) * B(k, j);
            end
        end
    end
end
