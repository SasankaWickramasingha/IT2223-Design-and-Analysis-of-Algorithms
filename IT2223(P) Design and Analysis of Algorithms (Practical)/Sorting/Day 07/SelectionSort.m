% Selection Sort 
arr = [7, 4, 10, 8, 3, 1];         % Unsorted array
sortedArr = selectionSort(arr);    % Call the function
disp('Unsorted Array:');
disp(arr);
disp('Sorted Array:');
disp(sortedArr);                   % Display result

% Function definition
function sorted = selectionSort(arr)
    n = length(arr); % Length of the array

    for i = 1 : n-1
        min = i; % Assume the current index has the minimum

        % Find the index of the minimum element in the remaining array
        for j = i+1 : n
            if arr(j) < arr(min)
                min = j;
            end
        end

        % Swap if a smaller element was found
        if min ~= i
            temp = arr(i);
            arr(i) = arr(min);
            arr(min) = temp;
        end
    end

    sorted = arr; % Return the sorted array
end

