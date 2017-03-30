x=linspace(1,42,42);
y=[17.199,11.7975,14.3055,11.4345,10.461,10.065,10.164,9.7515,10.9395,10.362,10.0485,10.6425,10.527,9.4545,8.4645,8.2335,8.7285,8.9265,8.2005,8.4975,8.613,8.052,7.59,7.3755,7.227,7.3755,7.029,6.5505,6.369,7.2765,6.765,6.996,7.161,6.633,5.016,5.973,4.554,4.785,5.214,5.478,5.3625,6.006];
figure
scatter(x,y);
hold on 
p = polyfit(x,y,2);
y1 = polyval(p,x);
plot(x,y1);
xlabel('User GamePlay Occurences');
ylabel('Total Evacuation Time');
title('Graph of Evacuation Times for different User Gameplays in order of occurence');
text(16,16,'LOS = A, LOA = Low, LOH = Low');
