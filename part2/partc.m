clear
clc
close all

out = sim('partb_c_v1.slx')

time = out.tout;
input_voltage = out.input_voltage.data;
input_current = out.input_current.data;
output_voltage = out.output_voltage.data;

plot(time,input_voltage,'LineWidth',2)
hold on
plot(time,input_current,'LineWidth',2)
plot(time,output_voltage,'LineWidth',2)
grid minor
legend('Input Voltage','Input Current','Output Voltage')
xlabel('Time(Seconds)')
ylabel('Voltage(V) and Ampere(A)')
title('Input voltage, Input current and Output voltage vs time')
xlim([0.7999 0.841])
ylim([-350 500])