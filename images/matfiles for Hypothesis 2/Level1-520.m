y=[20.9715,14.85,14.586,15.0315,13.0845,13.4475,12.1605,11.9295,12.2925,12.1935,10.395,9.7185,8.514,9.306,8.811];
x=linspace(1,15,15);
figure
scatter(x,y);
hold on 
p = polyfit(x,y,2);
y1 = polyval(p,x);
plot(x,y1);
xlabel('User GamePlay Occurences');
ylabel('Total Evacuation Time');
title('Graph of Evacuation Times for different User Gameplays in order of occurence');
text(6,20,'LOS = F, LOA = High, LOH = Low');