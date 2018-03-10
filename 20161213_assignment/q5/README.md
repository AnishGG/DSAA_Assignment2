## Problem 5

In this problem, we need to figure of the phone number dialed, ifwe know the sounds of the individual dial tones.

### Solution

- Find the total number of dial tones present in the given signal(as each has same length).
- Convert all dial tones in the frequency domain.
- Now divide the fft of the whole signal into the parts found above. Now for each part take the dot product with each of the dial tone. The dial tone with maximum dot product is selected as that will closely resemble to the original dial tone.


```matlab
Eavesdrop('Police.ogg');
% Ans should come out to be 100
Eavesdrop('phonenum.ogg');
% Ans should come out to be 9515733002
```

