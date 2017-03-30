y=[15.939,15.312,14.1405,12.7875,8.811,8.778,8.0355,8.184];
x=linspace(1,8,8);
figure 
 scatter(x,y); 
 hold on 
 p = polyfit(x,y,2); 
 y1 = polyval(p,x); 
 plot(x,y1); 
 xlabel('User GamePlay Occurences'); 
 ylabel('Total Evacuation Time'); 
 title('Graph of Evacuation Times for different User Gameplays in order of occurence');
 text(16,16,'LOS = E, LOA = High, LOH = High');