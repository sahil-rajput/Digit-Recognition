load('mnist_bin38.mat')
%Total correct and incorrect
tc = 0
tic = 0
%For 10 digits [0 to 9]
for i = 0:9
    correct = 0;
    incorrect = 0;
    %For 0
    if i == 0
        n = size(test0);
        for j = 1:n
            row = double(test0(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 0
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 1
    elseif i == 1
        n = size(test1);
        for j = 1:n
            row = double(test1(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 1
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 2
    elseif i == 2
        n = size(test2);
        for j = 1:n
            row = double(test2(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 2
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 3
    elseif i == 3
        n = size(test3);
        for j = 1:n
            row = double(test3(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 3
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 4
    elseif i == 4
        n = size(test4);
        for j = 1:n
            row = double(test4(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 4
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 5
    elseif i == 5
        n = size(test5);
        for j = 1:n
            row = double(test5(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 5
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 6
    elseif i == 6
        n = size(test6);
        for j = 1:n
            row = double(test6(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 6
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 7
    elseif i == 7
        n = size(test7);
        for j = 1:n
            row = double(test7(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 7
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 8
    elseif i == 8
        n = size(test8);
        for j = 1:n
            row = double(test8(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 8
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    %For 9
    elseif i == 9
        n = size(test9);
        for j = 1:n
            row = double(test9(j,:))/255;
            input = row';
            %Test for digit
            op = digit_te(input,weight,fw,bwh,bwo);
            if op == 9
                correct = correct + 1;
                tc = tc + 1;
            else
                incorrect = incorrect + 1;
                tic = tic + 1;
            end
        end
    end
    %Classification accuracy for each digit
    fprintf('Classification Accuracy for digit %d = %f\n',i,(correct/(incorrect+correct))*100);
end
%Total classification accuracy
fprintf('Total Classification Accuracy = %f\n',(tc/(tic+tc))*100);