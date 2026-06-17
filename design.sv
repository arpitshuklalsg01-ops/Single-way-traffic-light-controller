`timescale 1ns/1ps
module traffic_light (
    input clk,rst,
    output reg R,G,Y
);
  
    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] current_state;
    reg [1:0] next_state;

    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= RED;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            RED    : next_state = GREEN;
            GREEN  : next_state = YELLOW;
            YELLOW : next_state = RED;
            default: next_state = RED;
        endcase
    end

    always @(*) begin
        R = 0; G = 0; Y = 0;
        case (current_state)
            RED    : R = 1;
            GREEN  : G = 1;
            YELLOW : Y = 1;
        endcase
    end

endmodule
