`include "./define/define.v"

`timescale 1ns/100ps
`define CYCLE 50.0
`define End_CYCLE  100000
`define rst_delay 50.0

module conv_tb;

reg Aclk;
reg rst;
reg [22:0] cycle;
reg [`pattern_bit:0] pattern [`pattern_num-1:0];
reg [`pattern_bit:0] pattern_in;
reg [`kernel_bit:0] kernel [`kernel_num-1:0];
reg [`kernel_bit:0] kernel_in;
wire [`result_bit:0] Rout;
wire result_done;
reg [`result_bit:0] golden [`result_num-1:0];
reg [`result_bit:0] result [`result_num-1:0];
reg [`result_num:0] raddr;
reg verify;

integer file;   //pattern
integer file2;  //kernel
integer file3;  //golden

/**在testbench內使用for迴圈須注意，因initial及always block為同時運行，故不同block內的
for指標要不同，否則互相干擾**/
integer i;
integer j;
integer r;
integer v;
integer f1;
integer f2;
integer f3;
integer fail;

conv conv(
         .Aclk              (Aclk),
         .rst               (rst),
         .Xin               (pattern_in),
         .Kin               (kernel_in),

         .Rout              (Rout),
         .result_done       (result_done)
     );

/***write your testbench behavior here***/
/*setting initial value*/
initial
begin
    $fsdbDumpfile("conv.fsdb");
    $fsdbDumpvars(0,conv_tb);
end

initial
begin
    Aclk = 0;
    pattern_in = 7'dx;
    rst = 1;
    cycle = 0;
end

/*generate clk and rst signal*/
initial
begin
    #`rst_delay rst = 0;
end

always
begin
    forever
        #(`CYCLE/2) Aclk=!Aclk;
end

/*load file*/
initial //pattern
begin
    file = $fopen("./software/pattern.dat","r");
    if(file == 0)
    begin
        $display("pattern.dat handle null");
        $finish;
    end
    else
    begin
        for (f1=0;f1<`pattern_num;f1=f1+1)
        begin
            $fscanf(file ,"%f",pattern[f1]);
        end
        $fclose(file);
    end
end

/*
initial
    forever
    begin
        for(i=0;i<`pattern_num;i=i+1)
        begin
            @(posedge Aclk)
             pattern_in = pattern[i];
        end
    end
*/

/*posedge 送資料進去會導致時序問題，導致計算錯誤*/
initial
begin
    for(i=0;i<`pattern_num;i=i+1)
    begin
        @(negedge Aclk)
         pattern_in = pattern[i];
    end
end

initial //kernel
begin
    file2 = $fopen("./software/kernel.dat","r");
    if(file2 == 0)
    begin
        $display("kernel.dat handle null");
        $finish;
    end
    else
    begin
        for (f2=0;f2<`kernel_num;f2=f2+1)
        begin
            $fscanf(file2 ,"%f",kernel[f2]);
        end
        $fclose(file2);
    end
end

initial
    forever
    begin
        for(j=0;j<`kernel_num;j=j+1)
        begin
            @(posedge Aclk)
             kernel_in = kernel[j];
        end
    end

/*check cycle correct*/
always@(posedge Aclk)
begin
    cycle = cycle + 1;
    if(cycle == `End_CYCLE)
    begin
        $display("-------------------------------------\n");
        $display("---Timeout !! Simulation failed !!---\n");
        $display("-------------------------------------\n");
        $fclose(file);
        $finish;
    end
end

/*verify your design*/
initial //golden
begin
    file3 = $fopen("./software/golden.dat","r");
    if(file3 == 0)
    begin
        $display("golden.dat handle null");
        $finish;
    end
    else
    begin
        for (f3=0;f3<`kernel_num;f3=f3+1)
        begin
            $fscanf(file3 ,"%f",golden[f3]);
        end
        $fclose(file3);
    end
end

always@(posedge Aclk)   //Rout
begin
    if(rst)
    begin
        for (r=0;r<`kernel_num;r=r+1)
        begin
            result[r] = `result_bit'd0;
        end

        raddr = `result_num'd1;
        verify = 1'd0;
    end
    else
    begin
        if(result_done)
        begin
            raddr = raddr + `result_num'd1;
            result[raddr-1] = Rout;
            if(raddr-1 == `result_bit'd4)
            begin
                verify = 1'd1;
            end
        end
        else
        begin
            raddr = `result_num'd0;
            result[raddr] = `result_bit'd0;
            verify = 1'd0;
        end
    end
end

initial
begin
    wait(verify);
    $display("-------------Simulation done--------------\n");
    fail=0;

    for(v=0;v<`result_num;v=v+1)
    begin
        if(golden[v] == result[v])
        begin
            $display("result[%d] pass , result[%d] is %d !!",v,v,result[v]);
        end
        else
        begin
            fail = fail + 1;
            $display("result[%d] fail , result[%d] is %d !!",v,v,result[v]);
        end
    end
    check_fail(fail);
    $finish;
end

/*display finish result*/

/*initial
begin
    $display("-------------------------------------\n");
    $display("-------------ALL Finish--------------\n");
    $display("-------------------------------------\n");
    #1000 $finish;
end*/

task check_fail;
    input integer fail;

    if(fail == 0)
    begin
        $display("-------------ALL Finish--------------\n");
        $display("-------------ALL PASS----------------\n");
    end

endtask


endmodule
