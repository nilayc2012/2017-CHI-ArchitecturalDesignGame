y=[9.438,11.418,6.6165,7.9035,8.2995];
xx=linspace(1,5,5);
figure 
 scatter(x,y); 
 hold on 
 p = polyfit(x,y,2); 
 y1 = polyval(p,x); 
 plot(x,y1); 
 xlabel('User GamePlay Occurences'); 
 ylabel('Total Evacuation Time'); 
 title('Graph of Evacuation Times for different User Gameplays in order of occurence');
 text(16,16,'LOS = C, LOA = Medium, LOH = Medium');