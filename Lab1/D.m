% D.2
tic 
for i = 1:1024
for j = 1:100
if abs(B(i,j)) < 0.01
B(i,j)=0;
end
end
end
toc

tic 
B((B > -0.01) & (B < 0.01)) = 0;
toc

% D.3
wave = x_audio;
count = 0;
wave( wave <= 0.01 ) = 0;
[row_count1, col_count2] = size(wave);
for x = 1:row_count1
    for y = 1:col_count2
        if wave(x, y) == 0    % is elements maginitude under 0?
            count = count + 1;
        end
    end
end
disp(count)
