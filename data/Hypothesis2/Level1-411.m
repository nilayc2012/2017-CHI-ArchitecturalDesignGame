y=[9.141,10.0155,8.646,8.8275,8.7285];
x=linspace(1,5,5);
figure 
 scatter(x,y); 
 hold on 
 p = polyfit(x,y,2); 
 y1 = polyval(p,x); 
 plot(x,y1); 
 xlabel('User GamePlay Occurences'); 
 ylabel('Total Evacuation Time'); 
 title('Graph of Evacuation Times for different User Gameplays in order of occurence');
 text(16,16,'LOS = E, LOA = Medium, LOH = Medium');