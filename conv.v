`include "./define/define.v"
`timescale 1ns/100ps
module conv(
           input Aclk,
           input rst,
           input [`pattern_bit:0] Xin,
           input [`kernel_bit:0] Kin,

           output reg [`result_bit:0] Rout,
           output reg result_done
       );

reg [`pattern_bit:0] pattern [`pattern_num-1:0];
reg [4:0] daddr;
wire pattern_done;
reg [`kernel_bit:0] kernel [`kernel_num-1:0];
reg [4:0] kaddr;
wire kernel_done;
reg [`result_bit:0] result [`result_num-1:0];
reg [4:0] out_cnt;

integer i;

/*loading pattern*/
assign pattern_done = (daddr-1>=9) ? 1'd1 : 1'd0;

always@(posedge Aclk)
begin
    if(rst)
    begin
        for(i=0;i<`pattern_num;i=i+1)
        begin
            pattern[i] <= `pattern_bit'd0;
        end

        daddr <= 5'd1;  //不能為0，pattern接不到資料
    end
    else
    begin
        if(pattern_done)
        begin
            pattern[daddr] <= pattern[daddr];
            daddr <= daddr;
        end
        else
        begin
            pattern[daddr-1] <= Xin;
            daddr <= daddr + 5'd1;
        end
    end
end

/*loading kernel*/
assign kernel_done = (kaddr-1>=4) ? 1'd1 : 1'd0;

always@(posedge Aclk)
begin
    if(rst)
    begin
        for(i=0;i<`kernel_num;i=i+1)
        begin
            kernel[i] <= `kernel_bit'd0;
        end

        kaddr <= 5'd1;
    end
    else
    begin
        if(kernel_done)
        begin
            kernel[kaddr] <= kernel[kaddr];
            kaddr <= kaddr;
        end
        else
        begin
            kernel[kaddr-1] <= Kin;
            kaddr <= kaddr + 5'd1;
        end
    end
end

/*convolution computation*/
always@(*)
begin
    if(rst)
    begin
        for(i=0;i<`result_num;i=i+1)
        begin
            result[i] = 7'd0;
        end
    end
    else
    begin
        if(pattern_done & kernel_done)
        begin
            result[0] = pattern[0]*kernel[0] + pattern[1]*kernel[1] + pattern[3]*kernel[2] + pattern[4]*kernel[3];
            result[1] = pattern[1]*kernel[0] + pattern[2]*kernel[1] + pattern[4]*kernel[2] + pattern[5]*kernel[3];
            result[2] = pattern[3]*kernel[0] + pattern[4]*kernel[1] + pattern[6]*kernel[2] + pattern[7]*kernel[3];
            result[3] = pattern[4]*kernel[0] + pattern[5]*kernel[1] + pattern[7]*kernel[2] + pattern[8]*kernel[3];
        end
        else
        begin
            for(i=0;i<`result_num;i=i+1)
            begin
                result[i] = 7'd0;
            end
        end
    end
end

always@(posedge Aclk)
begin
    if(rst)
    begin
        result_done <= 1'd0;
    end
    else
    begin
        if(pattern_done & kernel_done)
        begin
            result_done <= 1'd1;
        end
        else
        begin
            result_done <= result_done;
        end
    end
end

always@(posedge Aclk)
begin
    if(rst)
    begin
        Rout <= 7'd0;
        out_cnt <= 5'd1;
    end
    else
    begin
        if(pattern_done & kernel_done)
        begin
            out_cnt <= out_cnt + 5'd1;
            Rout <= result[out_cnt-1];
        end
        else
        begin
            out_cnt <= 5'd1;
            Rout <= 5'd0;
        end
    end
end

endmodule
