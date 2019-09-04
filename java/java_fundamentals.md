### 1. Non-static variable cannot be referenced from a static context error
static methods belong to class not an instance of the class. Staic method doesn’t know which instance to link to the the non-static variable. 2 ways: make non-static variable static; or make the method non-static. 
Notes taking from JavaRevisited:
```
Static variable in Java belongs to Class and its value remains same for all instance. 
static variable initialized when class is loaded into JVM 
on the other hand instance variable has different value for each instances 
and they get created when instance of an object is created either by using new() operator or using reflection like Class.newInstance(). 
So if you try to access a non static variable without any instance compiler will complain 
because those variables are not yet created and they don't have any existence until an instance is created and they are associated with any instance. 
So in my opinion only reason which make sense to disallow non static or instance variable inside static context is non existence of instance.

Read more: https://javarevisited.blogspot.com/2012/02/why-non-static-variable-cannot-be.html#ixzz5yWZTYTwg
```
[Reading material](https://stackoverflow.com/questions/2559527/non-static-variable-cannot-be-referenced-from-a-static-context)
