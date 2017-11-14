function [weight,fw,bwh,bwo] =digit_tr(input,weight,fw,bwh,bwo,digit)
    coeff = 0.2;
    bias = 1;
    no_of_iterations = 30;
    %Final output array of ZEROS
    final_output = zeros(1,10);
    out = zeros(1,10);    
    if digit == 0
        digit = 10;
    end
    final_output(digit) = 1;
    for i = 1:no_of_iterations
        delta3 = zeros(1,10);
        delta2 = zeros(1,784);
        hidden_layer_op = zeros(1,784);
        for j = 1:784
            sum = 0;
            for k = 1:784
                sum = sum + input(k,1)*weight(j,k);
            end
            sum = sum + bias*bwh(j,1);
            h = 1/(1+exp(-sum));
            hidden_layer_op(j) = h;
        end
        for j = 1:10
            sum = 0;
            for k = 1:784
                sum = sum + hidden_layer_op(k)*fw(j,k);
            end
            sum = sum + bias*bwo(j,1);
            o = 1/(1+exp(-sum));
            out(j) = o;
        end
        for j = 1:10
            delta3(j) = out(j)*(1-out(j))*(final_output(j) - out(j));
        end
        for j = 1:784
            prod = 0;
            for k = 1:10
                prod = prod + delta3(k)*fw(k,j);
            end
            delta2(j) = hidden_layer_op(j)*(1-hidden_layer_op(j))*prod;
        end
        for j = 1:10
            for k = 1:784
                fw(j,k) = fw(j,k) + coeff*hidden_layer_op(k)*delta3(j);
            end
        end
        for j = 1:784
            for k = 1:784
                weight(j,k) = weight(j,k) + coeff*input(k,1)*delta2(j);
            end
        end
        for j = 1:784
            bwh(j,1) = bwh(j,1) + coeff*bwh(j,1)*delta2(j);
        end
        for j = 1:10
            bwo(j,1) = bwo(j,1) + coeff*bwo(j,1)*delta3(j);
        end
    end
end