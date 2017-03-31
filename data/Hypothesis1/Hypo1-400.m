x=linspace(1,12,12);
y=[19.833,17.82,14.685,12.804,13.2825,13.299,13.1175,10.9725,9.0915,8.431499,9.1245,9.7845];
figure
scatter(x,y);
hold on 
p = polyfit(x,y,2);
y1 = polyval(p,x);
plot(x,y1);
xlabel('User GamePlay Occurences of User ID 5');
ylabel('Total Evacuation Time');
title('Graph of Evacuation Times for different User Gameplays in order of occurence');
text(5,17,'LOS = E, LOA = Low, LOH = Low');