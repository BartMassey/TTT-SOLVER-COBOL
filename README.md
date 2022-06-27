# TTT-SOLVER-COBOL: Tic-Tac-Toe solver in (mostly) COBOL-85
Bart Massey 2022

I'm learning COBOL right now, because an opportunity
arose. I wrote this for my
[ttt-bench](http://github.com/BartMassey/ttt-bench)
benchmark suite. It computes the game value of Tic-Tac-Toe
from the initial state: if it doesn't print `+0` then
something is wrong. The code deliberately avoids all
pruning, for uniformity with the other benchmarks: it thus
requires about 1.8 seconds on my fast box.

The code is as close to COBOL-85 as I can reasonably manage.
It does use recursion, though. Recursion is really tedious
and hard to avoid for this; also, benchmark comparability is
better this way.

I am a COBOL novice. Issues and PRs are welcome.

This work is made available under the "MIT License". Please
see the file `LICENSE.txt` in this distribution for license terms.
