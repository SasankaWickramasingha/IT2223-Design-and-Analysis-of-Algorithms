a = [12, 13, 14, 15, 16, 17];


indx = binarySearch(a, 14);


if indx == -1
    disp('Index Not Found');
else
    fprintf('Element Found At Index: %d\n', indx);  
end


function index = binarySearch(arr, target)
    left = 1;
    right = length(arr);
    index = -1;  

    while left <= right
        mid = floor((left + right) / 2);

        if arr(mid) == target
            index = mid;
            return;
        elseif arr(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        end
    end
end
