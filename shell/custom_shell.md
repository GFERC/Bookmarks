1. When using single line “compacted” functions, a semicolon ; must follow the last command in the function.
2. In Bash all variables by default are defined as global, even if declared inside the function.
3. Local variables can be declared within the function body with the local keyword and can be used only inside that function. You can have local variables with the same name in different functions.
4. Bash functions don’t allow you to return a value when called. When a bash function completes, its return value is the status of last statement executed in the function, 0 for success and non-zero decimal number in the 1 - 255 range for failure. The return status can be specified by using the return keyword and it is assigned to the variable $?.
5. The $0 variable is reserved for the function’s name. The $# variable holds the number of positional parameters/arguments passed to the function. The "$*" or $@ variable holds all positional parameters/arguments passed to the function. 
[ref](https://linuxize.com/post/bash-functions/#variables-scope)
