% Quick Sort
arr = [45, 12, 39, 74, 100];
disp('Original Array: ');
disp(arr);

sortedArr = quickSort(arr);
disp('Sorted Array: ');
disp(sortedArr);

function sortedArray = quickSort(arr)
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end

    pivot = arr(1);
    
    left = [];    
    right = [];   
    equal = [];   
    
    for i = 1:length(arr)
        if arr(i) < pivot
            left(end+1) = arr(i);
        elseif arr(i) > pivot
            right(end+1) = arr(i);
        else
            equal(end+1) = arr(i);
        end
    end

    sortedLeft = quickSort(left);
    sortedRight = quickSort(right);
    
    sortedArray = [sortedLeft, equal, sortedRight];
end
