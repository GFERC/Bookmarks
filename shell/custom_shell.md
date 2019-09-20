1. When using single line “compacted” functions, a semicolon ; must follow the last command in the function.
2. In Bash all variables by default are defined as global, even if declared inside the function.
3. Local variables can be declared within the function body with the local keyword and can be used only inside that function. You can have local variables with the same name in different functions.
4. Bash functions don’t allow you to return a value when called. When a bash function completes, its return value is the status of last statement executed in the function, 0 for success and non-zero decimal number in the 1 - 255 range for failure. The return status can be specified by using the return keyword and it is assigned to the variable $?.
5. The $0 variable is reserved for the function’s name. The $# variable holds the number of positional parameters/arguments passed to the function. The "$*" or $@ variable holds all positional parameters/arguments passed to the function. 
[ref](https://linuxize.com/post/bash-functions/#variables-scope)
6. global vs local variable: Having local variables allows the programmer to use variables with names that may al- ready exist, either in the script globally or in other shell functions, without having to worry about potential name conflicts.  Use “local” to before a variable to indicate it’s a local variable. E.g local foo
7. Here document/script: A here document is an additional form of I/O redirection in which we embed a body of text into our script and feed it into the standard input of a command. where command is the name of command that accepts standard input and token is a string used to indicate the end of the embedded text. [REF1](https://bash.cyberciti.biz/guide/Here_documents) and [Advanced Bash-Scripting Guid: Here Documents](http://tldp.org/LDP/abs/html/here-docs.html)