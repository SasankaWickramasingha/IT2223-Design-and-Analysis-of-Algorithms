clc
clearvars

arr = [3,5,7,9,11,13];
target = 9;
n=length(arr);
found = false;
tic;

for i = 1:n
   if(arr(i) == target)
       fprintf('The Target is Found at Index %d',i);
       found = true;
       break;
   end
end
    if(found == false)
    disp('The Target is not Found');
    end


elapsedTime=toc;
disp(' ');
fprintf('The Elapesed Time for Loop 1 : %f' , elapsedTime);



disp(' ');
disp(' ');
tic;
for i = 1:n
   if(arr(i) == target)
       fprintf('The Target is Found at Index %d',i);
       found = true;
       index=i;
       break;
   end
end
    if found
    fprintf('The Target is Found :  %d' ,index);
    else
        disp('Not Found');
    end
    
    elapsedTime=toc;
disp(' ');
fprintf('The Elapesed Time for Loop 2 : %f' , elapsedTime);



