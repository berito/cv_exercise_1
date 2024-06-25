function sorted_arr = quicksort(arr)
    if length(arr) <= 1
        sorted_arr = arr;
        return;
    end
    pivot = arr(floor(length(arr) / 2));
    left = arr(arr < pivot);
    middle = arr(arr == pivot);
    right = arr(arr > pivot);
    sorted_arr = [quicksort(left), middle, quicksort(right)];
end
