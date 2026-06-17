`timescale 1ns/1ps
module tb_traffic_light;
    reg clk, rst;
    wire R, G, Y;

    traffic_light uut (
        .clk(clk), .rst(rst),
        .R(R), .G(G), .Y(Y)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
      
      $dumpfile("dump.vcd");
      $dumpvars(1, tb_traffic_light);
        
        rst = 1;          
        #12 rst = 0;     
        #100 $finish;    
    end

    initial begin
        $monitor("Time=%0t | clk=%b rst=%b | R=%b G=%b Y=%b",
                  $time, clk, rst, R, G, Y);
    end
endmodule
