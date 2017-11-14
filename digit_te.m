function op = digit_te(input,weight,fw,bwh,bwo)
    out = zeros(1,10);
    bias = 1;
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
    [max_val,pos] = max(out);
    if pos == 10
        op = 0;
    else
        op = pos;
    end
end