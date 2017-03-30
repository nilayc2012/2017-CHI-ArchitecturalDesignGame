y=[12.969,8.7945,9.009];
x=linspace(1,3,3);
figure 
 scatter(x,y); 
 hold on 
 p = polyfit(x,y,2); 
 y1 = polyval(p,x); 
 plot(x,y1); 
 xlabel('User GamePlay Occurences'); 
 ylabel('Total Evacuation Time'); 
 title('Graph of Evacuation Times for different User Gameplays in order of occurence');
 text(16,16,'LOS = E, LOA = Medium, LOH = Low');