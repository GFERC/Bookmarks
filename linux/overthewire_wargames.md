# Introduction 
I found this online command line game to practice linux commands. This
file is to record my learning.To access the game information, go to http://overthewire.org/wargames/

# Learning 
## Bandict
### L4: find the human-readable files
I used file command file <file name> to find out the type of a
file.Human -reable files are ASCII files.  
  
### L5: find files of a certain size
use -size n[cwbkMG] to find files with matching size. It actually just returned one and the result also matches the otehr 2 requirement. See more on fine -size in [here](http://www.ducea.com/2008/02/12/linux-tips-find-all-files-of-a-particular-size/)

### L6: find files with owner by user and group
find .  -user bandit7 -group bandit6 -size 33c. Ref is [here](https://www.cyberciti.biz/faq/how-do-i-find-all-the-files-owned-by-a-particular-user-or-group/)

### L7: find keyworks in a file
use pipeline and grep - cat ./data.txt | grep millionth

### L8: find unique lines of a file
sort data.txt | uniq -u

### L9: find human readable strings
use strings - strings data.txt | grep =

# Passwords
## Bandict
L0: boJ9jbbUNNfktd78OOpsqOltutMc3MY1

L4: koReBOKuIDDepwhWk7jZC0RTdopnAYKh

L5: DXjZPULLxYr17uwoI01bNLQbtFemEgo7

L6: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs

L7: cvX2JJa4CFALtqS87jk27qwqGhBM9plV

L8: UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR

L9: truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
