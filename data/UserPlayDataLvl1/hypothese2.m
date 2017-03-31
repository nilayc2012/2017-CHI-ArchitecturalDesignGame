%hypothese2


data = readtable('Level1.txt');
data;
data(:,3)
Replay = {'True'}
r = cell2table(Replay)
data = data(~ismember(data(:,3),r),:)
y = table2array(data(:,9));
% groups = table2array(data(:,1));
users = table2array(unique(data(:,1)));
iterations=2;

groups = zeros(height(data),1);
for i = 1:height(data)
    groups(i) = 4;
    dat = (data(i,:));
    CheckedHeatMap = table2array(dat(1,4));
    CheckedBestHeatMap = table2array(dat(1,5));
    if ( strcmp(CheckedHeatMap(1,1), 'True') && strcmp(CheckedBestHeatMap(1,1), 'True'))
       groups(i) = 1 ;
    elseif ( strcmp(CheckedHeatMap(1,1), 'True'))
       groups(i) = 2;
    elseif ( strcmp(CheckedBestHeatMap(1,1), 'True'))
       groups(i) = 3; 
    end
end

% groups = table(groups)
y = table2array(data(:,9));

[p,tbl,stats] = anova1(y, groups);