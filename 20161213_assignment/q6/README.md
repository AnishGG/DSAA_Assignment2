## Problem 6

Here we are expected to decrypt the voice signals which have been rearranged in the frequency domain according to a particular key.

### Solution
- Convert the signal to the frequency domain using the inbuild fft function of the matlab.
- Break the signals into specified parts
- Rearrange the parts and take the ifft and listen to the permutations and find out if they make any sense.
- Here total 4! = 24 permutations are possible for a single sound.

### Messages
- The first message is "**If you are good at something never do it for free**."
- The second message is "**Why so serious?**"
- The third message is "**Let's put a smile on that face**"