load('mnist_all.mat');
%randomly assign weights
weight = .2*rand(784,28*28) - .1;
disp(weight);
%Final weight
fw = .2*rand(10,784) -.1;
disp(fw);
%Bias weigth
bwh = .2*rand(784,1) -.1;
disp(bwh);
bwo = .2*rand(10,1) -.1;
disp(bwo);
for i = 1:1000
    disp(i);
    s = size(train0);
    disp(s);
    if s(1) >= i
        row = double(train0(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] = digit_tr(input,weight,fw,bwh,bwo,0);
    end
    s = size(train1);
    if s(1) >= i
        row = double(train1(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] = digit_tr(input,weight,fw,bwh,bwo,1);
    end
    s = size(train2);
    if s(1) >= i
        row = double(train2(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] = digit_tr(input,weight,fw,bwh,bwo,2);
    end
    s = size(train3);
    if s(1) >= i
        row = double(train3(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] = digit_tr(input,weight,fw,bwh,bwo,3);
    end
    s = size(train4);
    if s(1) >= i
        row = double(train4(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] =digit_tr(input,weight,fw,bwh,bwo,4);
    end
    s = size(train5);
    if s(1) >= i
        row = double(train5(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] =digit_tr(input,weight,fw,bwh,bwo,5);
    end
    s = size(train6);
    if s(1) >= i
        row = double(train6(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] = digit_tr(input,weight,fw,bwh,bwo,6);
    end
    s = size(train7);
    if s(1) >= i
        row = double(train7(i,:))/255;
        input = row';
        [weight,fw,bwh,bwo] = digit_tr(input,weight,fw,bwh,bwo,7);
    end
    s = size(train8);
    if s(1) >= i
        row = double(train8(i,:))/255;
        input = row';
        %Train for digit
        [weight,fw,bwh,bwo] = digit_tr(input,weight,fw,bwh,bwo,8);
    end
    s = size(train9);
    if s(1) >= i
        row = double(train9(i,:))/255;
        input = row';
        [weight,fw,bwh,bwo] =digit_tr(input,weight,fw,bwh,bwo,9);
    end
end
save('mnist_bin38.mat');
