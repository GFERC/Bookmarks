## Things to Note
1. be aware that some aliases may be reserved words, so test it, before you mistakenly overwrite a critical command.
2. a good practice is to keep system files separate from personal use case.
3. pasted our function in the terminal and tried to run it? This will make the command(which is just a function/method actually) available to the current terminal session for that particular tab only. If you try opening new tab and execute the command, it won’t be there. [Ref](https://medium.com/devnetwork/how-to-create-your-own-custom-terminal-commands-c5008782a78e)
4. we have to tell terminal to load the content of our script in each terminal session. We do that by adding the command for loading the script in a rc (Run Control) file of the Shell. The shell loads/executes all the commands inside the run control file during each interactive shell launch. Bash is the default shell for almost all UNIX based systems. However, different flavours like ZSH are also there. In ~/.bashrc or ~/.zshrc, put in source ~/.my_custom_commands.sh [Ref](https://medium.com/devnetwork/how-to-create-your-own-custom-terminal-commands-c5008782a78e)

