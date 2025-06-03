% Selectoin Sort
arr = [7, 4, 10, 8, 3, 1];

function sorted = selectionSort(arr)
n = length(arr); % 6
for i = 1 : n-1 % run the steps (steps 5)
    min = i; 
    for j = i+1 : n 
        if arr(j) < arr(min)
            min = j;
        end
    end

    if min ~= i
        temp = arr(i);
        arr(i) = arr(min);
        arr(min) = temp;
    end
   
end
end










