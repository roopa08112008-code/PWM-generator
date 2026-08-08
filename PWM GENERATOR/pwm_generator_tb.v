`timescale 1ns/1ps

module pwm_generator_tb;

reg clk;
reg reset;
reg [7:0] duty_cycle;

wire pwm_out;

pwm_generator uut (
    .clk(clk),
    .reset(reset),
    .duty_cycle(duty_cycle),
    .pwm_out(pwm_out)
);

// Clock generation
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin

    $display("-------------------------------------------");
    $display("        PWM Generator Simulation");
    $display("-------------------------------------------");
    $display("Duty Cycle | PWM Output");
    $display("-------------------------------------------");

    // Reset
    reset = 1'b1;
    duty_cycle = 8'd0;
    #20;

    reset = 1'b0;

    // 25% duty cycle
    duty_cycle = 8'd64;
    #2560;

    // 50% duty cycle
    duty_cycle = 8'd128;
    #2560;

    // 75% duty cycle
    duty_cycle = 8'd192;
    #2560;

    // 100% duty cycle
    duty_cycle = 8'd255;
    #2560;

    $display("-------------------------------------------");
    $display("Simulation Completed Successfully.");
    $display("-------------------------------------------");

    $finish;
end

endmodule