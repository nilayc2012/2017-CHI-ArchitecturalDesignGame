x=linspace(1,19,19);
y=[15.972,13.8765,12.672,11.22,11.0055,12.111,11.022,10.263,10.903,10.3125,11.781,9.669,10.362,10.527,11.121,8.613,8.2665,9.121,9.662];
figure
scatter(x,y);
hold on 
p = polyfit(x,y,2);
y1 = polyval(p,x);
plot(x,y1);
xlabel('User GamePlay Occurences of User ID 5');
ylabel('Total Evacuation Time');
title('Graph of Evacuation Times for different User Gameplays in order of occurence');
text(8,14,'LOS = F, LOA = Low, LOH = Low');