y=[17.787,17.1765,17.3745,16.6155,16.269,15.378,14.454,12.507,13.5135,13.6785,13.8765,13.53,12.8535,12.441,12.672,12.0615,12.738,12.21,12.5235,11.583,11.121,11.2035,11.319,10.692,10.8075,9.273,10.824,10.3785,9.174,9.405,9.075,9.5865,9.273,9.108,9.273,9.3225,8.118,9.207,8.7945,8.844,8.943,8.0685,7.656,7.6065,8.0025,7.9035,9.6195,8.398499];
x=linspace(1,48,48);
figure
scatter(x,y);
hold on 
p = polyfit(x,y,2);
y1 = polyval(p,x);
plot(x,y1);
xlabel('User GamePlay Occurences');
ylabel('Total Evacuation Time');
title('Graph of Evacuation Times for different User Gameplays in order of occurence');
text(20,16,'LOS = E, LOA = High, LOH = Low');
