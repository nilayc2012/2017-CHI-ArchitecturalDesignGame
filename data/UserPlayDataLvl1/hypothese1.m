% hypothesis 1

data = readtable('Level1.txt');
data
Replay = {'True'}
r = cell2table(Replay)
data = data(~ismember(data(:,3),r),:)

y = table2array(data(:,9));
groups = table2array(data(:,1));
users = table2array(unique(data(:,1)));
iterations=4;
% C = splitapply(@sort, user0, data)
% need to ge the data for users that played more than once

% rows are users colums are data points
user_data = {};
user_data_x = {};
for i = 1:size(users, 1)
    usr = users(i);
    user_data{i} = [];
    user_data_x{i} = [];
    for r = 1:height(data)
        dat = (data(r,:));
        dat2 = table2array(dat(1,1));
        % usr:
        if (strcmp(dat2(1,1), usr))
            % user_data{i}
            % dat
            user_data{i} = [user_data{i}, table2array(dat(1,9))];
            user_data_x{i} = [user_data_x{i}, size(user_data{i},2)];
        end
        if (size(user_data{i},2) > iterations)
           break; 
        end
    end
    
end
user_data
user_data_x

% remove data from user with only one entry
user_data2 = {}
user_data2_x = {}
j=1;
for k = 1:size(user_data,2)
    ud = user_data{k};
    ud_x = user_data_x{k}
    
    size(ud(1));
    if (size(ud, 2) > 1)
       user_data2{j} = ud;
       user_data2_x{j} = ud_x;
       j=j+1;
    end
end
user_data2
user_data2_x


% C = join(users,data,'Keys','user0')

%[p,tbl,stats] = anova1(y, groups);

x = cell2mat(user_data2_x)
y = cell2mat(user_data2)
f=fit(x',y','poly2')
plot(f,x',y')
title('Iteration vs simualtion time')