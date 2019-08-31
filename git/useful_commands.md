### 1. remove cached files/folders
I rename a folder using "mv oldName newName" and push to remote. In local run ls, I cannot see oldName folder but remote has both oldNmae folder and newname folder.To make things right:

1. git rm -r --cached some-directory
2. git commit -m 'Remove the now ignored directory "some-directory"'
3. git push origin master

Ref: [remove-directory-from-remote-repository](https://stackoverflow.com/questions/7927230/remove-directory-from-remote-repository-after-adding-them-to-gitignore)
