was_changing_greater=0;

for j=1:100      
statistics_1=0;
statistics_2=0;
A=[1,2,3];

for i =1:1000
y=randsample(A,1);

%y is the door the car is behind

apriori_choice=randsample(A,1);

%we make a choice of a door.
%behind which door is the car?


A1 = A(A~=apriori_choice);
%host picks one of the doors that we didn't pick
host_choice = randsample(A1,1);
if host_choice == y
    %if host picks the one the car is behind, that door cannot be revealed
    %so the host has to choose the only other door left
    B = A1(A1~=y);
    host_choice = randsample(B,1);
end

if host_choice ~= y
    %if host picks the door that doesn't have the car behind it, the door
    %will be revealed
end

%then the door that was revealed by the host cannot be picked anymore because the
%player knows that the car is not behind it
A2=A(A~=host_choice);
%the player now has two different choices. One choice is the one they
%already chose, that is, they may not change their decision. The other
%decision is the door they haven't chosen, that is, they may change their
%decision.

%the experiment for "player changes decision"
Aq1=A2(A2~=apriori_choice);
aposteriori_choice_change=randsample(Aq1,1);

%the experiment for "player doesn't change decision"
aposteriori_choice_nochange=apriori_choice;


%if for the no change experiment
%the door did end up being the door with the car behind it
%increment
if aposteriori_choice_nochange==y
    statistics_1 = statistics_1 + 1;
end

%if for the change experiment
%the door did end up being the door with the car behind it
%increment
if aposteriori_choice_change == y
    statistics_2 = statistics_2 + 1;
end

end

clc
disp('number of times car was behind chosen door when the choice WAS changed')
disp (statistics_2)
disp('number of times car was behind chosen door when the choice WAS NOT changed')
disp (statistics_1)

if statistics_2>statistics_1
   was_changing_greater=was_changing_greater+1; 
end

end

disp('      **EXPLANATION**     ')
disp('First we perform the MONTY HALL experiment for both choices a 1000 times.')
disp('We calculate how many times each choice got the correct door.')
disp('After all 1000 experiments are done, we compare the times each choice got it correct.')
disp('If changing doors got more correct predictions in those 1000 experiments compared to not changing doors,')
disp('we count a 1.')
disp('We then repeat doing the 1000-times-Monty-Hall another 100 times. So we do 10 sets of 1000 experiments.')
disp('We can then see if changing doors actually gives us a higher percentage of choosing the proper door.')
fprintf('\n')
disp('The number of 1000-experiments in which changing doors resulted in more correct choices was:')
X1 =[num2str(was_changing_greater), ' times.'];
disp(X1)
fprintf('\n')
X2 = ['This means changing was a correct choice %',num2str(was_changing_greater),' of the time'];
disp(X)
%fprintf('This means changing was greater %%d of the time.\n',name,age);
%disp('This means changing was greater')
%disp(statistics3)
%disp('of the time.')
   