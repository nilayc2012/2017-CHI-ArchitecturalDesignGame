y=[15.213,13.2,9.801,8.25];
x=linspace(1,4,4);
figure 
 scatter(x,y); 
 hold on 
 p = polyfit(x,y,2); 
 y1 = polyval(p,x); 
 plot(x,y1); 
 xlabel('User GamePlay Occurences'); 
 ylabel('Total Evacuation Time'); 
 title('Graph of Evacuation Times for different User Gameplays in order of occurence');
 text(16,16,'LOS = D, LOA = High, LOH = Low');