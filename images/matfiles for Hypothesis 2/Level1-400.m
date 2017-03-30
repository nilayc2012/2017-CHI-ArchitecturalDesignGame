y=[23.265,21.087,22.704,19.833,17.82,16.533,15.609,15.0315,13.992,14.685,13.299,13.1175,13.2825,13.0515,12.4905,12.507,12.804,12.8535,12.804,11.8635,12.4245,11.616,10.89,10.9725,10.989,10.9395,8.217,9.0915,9.7515,9.8505,8.431499,9.768,9.7845,9.1245];
x=linspace(1,34,34);
figure
scatter(x,y);
hold on 
p = polyfit(x,y,2);
y1 = polyval(p,x);
plot(x,y1);
xlabel('User GamePlay Occurences');
ylabel('Total Evacuation Time');
title('Graph of Evacuation Times for different User Gameplays in order of occurence');
text(16,20,'LOS = E, LOA = Low, LOH = Low');