function root = bisection_method(func, a, b, tol, max_iter)
    if func(a) * func(b) >= 0
        error("Function values at the interval endpoints must be of opposite sign");
    end
    if nargin < 4
        tol = 1e-5;
    end
    if nargin < 5
        max_iter = 100;
    end
    for iter = 1:max_iter
        c = (a + b) / 2;
        if func(c) == 0 || (b - a) / 2 < tol
            root = c;
            return;
        elseif func(c) * func(a) < 0
            b = c;
        else
            a = c;
        end
    end
    root = (a + b) / 2;
end
