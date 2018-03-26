module tb_catboard_blinky_host;

reg clock;
wire [7:0] led;
wire uart_tx;
reg uart_rx;

initial begin
    $from_myhdl(
        clock,
        uart_rx
    );
    $to_myhdl(
        led,
        uart_tx
    );
end

catboard_blinky_host dut(
    clock,
    led,
    uart_tx,
    uart_rx
);

endmodule
