### 1. remove cached files/folders
I rename a folder using "mv oldName newName" and push to remote. In local run ls, I cannot see oldName folder but remote has both oldNmae folder and newname folder.To make things right:

1. git rm -r --cached some-directory
2. git commit -m 'Remove the now ignored directory "some-directory"'
3. git push origin master

Ref: [remove-directory-from-remote-repository](https://stackoverflow.com/questions/7927230/remove-directory-from-remote-repository-after-adding-them-to-gitignore)


### 2. remote branch checking and local/remote tracking
git remote show origin: Local branches configured for 'git pull' and ‘git push’. I know what remote branch my local branch will push to. I can also use git branch -vv to see branch tracking.

I can use git remote show to check the list of all remote servers. And I can then use git remote show one_remote_server to check it out.

### 3. Check when the file is firsted added
git log --diff-filter=A -- filename. [Ref1](https://stackoverflow.com/questions/11533199/find-commit-where-file-was-added) and [Ref2](https://git-scm.com/docs/git-log#Documentation/git-log.txt---diff-filterACDMRTUXB82308203)
  
### 4. Modify an earlier specific commit
[stackoverflow thread](https://stackoverflow.com/questions/1186535/how-to-modify-a-specified-commit)

### 5. local branch push to remote
On local branch push to remote: fatal: The upstream branch of your current branch does not match the name of your current branch. To push to the upstream branch on the remote, use git push origin HEAD:mainline To push to the branch of the same name on the remote, use git push origin verifySSDashDownload

### 6. Undo committed files from commits: [ref](https://stackoverflow.com/questions/12481639/remove-files-from-git-commit)
1. git reset --soft HEAD^ (or git reset --soft HEAD~1)
2. git reset HEAD path/to/unwanted_file
3. git commit -c ORIG_HEAD


### 7. Interactive git add a file
git add -p filename. Stage this hunk [y,n,q,a,d,j,J,g,/,e,?]? [REF](https://git-scm.com/docs/git-add)
1. y - stage this hunk
2. n - do not stage this hunk
3. q - quit; do not stage this hunk or any of the remaining ones
4. a - stage this hunk and all later hunks in the file
5. d - do not stage this hunk or any of the later hunks in the file
6. g - select a hunk to go to
7. / - search for a hunk matching the given regex
8. j - leave this hunk undecided, see next undecided hunk
9. J - leave this hunk undecided, see next hunk
10. k - leave this hunk undecided, see previous undecided hunk
11. K - leave this hunk undecided, see previous hunk
12. s - split the current hunk into smaller hunks
13. e - manually edit the current hunk
14. ? - print help

### 8. Check Stats between 2 Commits (lines added and lines removed)
git diff ac47442 dc496cb —stat
