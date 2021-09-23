# Monty-Hall-Problem-in-MATLAB
Some code for doing the Monty Hall problem in MATLAB and deciding whether changing doors actually is better.

I wrote a MATLAB code which calculates the statistics for the Monty Hall problem. The code first does the experiment a 1000 times, and finds out the number of times changing doors VS not changing doors got it correct. Then it compares the numbers to see if changing doors actually got more correct answers in those 1000 experiments compared to not changing doors. It then repeats this a 100 times. Meaning it does 1000 experiments where each time it records the number of times each "strategy'' of playing the Monty Hall game gets the correct answer, then compares which got more correct, writes that down and at the end of doing this a 100 times gives you a percentage of how many times changing the door was a better decision in the end.

Random decisions were made using the randsample() function which picks a random element from an array you provide it.
I also uploaded this on my YouTube channel:
https://youtu.be/Emp3BJ1aqSQ
