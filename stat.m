function mean_val = mean(data)
    mean_val = sum(data) / length(data);
end

function median_val = median(data)
    sorted_data = sort(data);
    n = length(data);
    mid = floor(n / 2);
    if mod(n, 2) == 0
        median_val = (sorted_data(mid) + sorted_data(mid + 1)) / 2;
    else
        median_val = sorted_data(mid + 1);
    end
end

function mode_val = mode(data)
    [unique_vals, ~, unique_idx] = unique(data);
    counts = accumarray(unique_idx, 1);
    max_count = max(counts);
    mode_val = unique_vals(counts == max_count);
end
