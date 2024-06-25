function sorted_arr = merge_sort(arr)
    if length(arr) <= 1
        sorted_arr = arr;
        return;
    end
    mid = floor(length(arr) / 2);
    left_half = merge_sort(arr(1:mid));
    right_half = merge_sort(arr(mid+1:end));
    sorted_arr = merge(left_half, right_half);
end

function result = merge(left, right)
    result = [];
    while ~isempty(left) && ~isempty(right)
        if left(1) <= right(1)
            result(end+1) = left(1);
            left(1) = [];
        else
            result(end+1) = right(1);
            right(1) = [];
        end
    end
    result = [result, left, right];
end
