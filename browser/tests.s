

<script type=kaffeine>
#kaffeine multiline_strings string_interpolation brackets_for_functions
var greet = "hello", bye = "bye", name = "james", age = 20

alert "${greet}
$name 
#{bye}
#name
"
alert "$name is ${age * 12} months old. ${"this is a string inside a interp"}"
</script>



<script type=kaffeine>
#kaffeine multiline_strings brackets_for_functions
alert "this
occurs 
over 
several 
lines
"
alert "this is a \
single \ 
line\
"
</script>



<script type=kaffeine>
#kaffeine indented_blocks
if(true)
  do_something()
  and_somemore()
    and(some(more))
else
  do_more
  for(x in A)
    send_for_help()
    etc
    etc
  if(true)
    sayhello()
    saygoodbye()
  
function(x)
  return y
</script>



<script type=kaffeine>
#kaffeine using
var Alert = { shout:function(x) { alert(x + "!!!")} }
using Alert
shout("hello");

</script>


<script type=kaffeine>
#kaffeine unless brackets reverse_blocks

return X if(false)

runStuff(), doShizzle() unless somethign()

// these aren't quite as useful!
Send(result) while result = process(x)

sendMessage(X[i]) for(i in X)
</script>

<script type=kaffeine>
#kaffeine operators
operator << { LHS.push(RHS) }
operator \ { Math.floor(LHS/RHS) }
operator ** { Math.pow(LHS,RHS) }

x = Myage() ** power + (5\4)

a << b
c.x << a(x)["hello"].concat(a)
5 == 21 \ 2
</script> 

<script type=kaffeine>
#kaffeine implicit_return

function() {123}
  
function() {
    ;1234;
  }
  
function() {
  {a: 1}  
}

function() {
  if(x) {
  } else {
  
  }
}


function() {
  1234
}

function() {
  return 1234  
}



function() {
  (function() {123}())
}
function() {
  function() {
    ;1234;
  }
}


</script>
<script type=kaffeine>
#kaffeine implicit_vars
z = 1
function() {
  a = 2
  x = 1
  y = 2  
}

function () {
  y = 3, z = 2
  t = x = function() {
  
  }
  
  function(a) {
    x = 13
    w = 2
    a = 1
  }
}


</script>


<script type=kaffeine>
#kaffeine backticks
people.map `#.manager` .detect `#.age > 30`
x = `
doshizzle(#)
`.call(people)
Times = `#1*#2`
</script>

<script type=kaffeine2>
#kaffeine arrow
x = -> return x*args
x = (a) -> 
   return x*args
x = (a,b) -> {
  return hello
}

x = X(a,b) -> {
  return hello
}
</script>



<script type=kaffeine>
#kaffeine half_operators
x = .length
a.x = || 5
if(true)
  xa['a'] = + 4
 
</script>



<script type=kaffeine>
#kaffeine backticks pipe 

x = [1,2,3,4,5,6,7] | map `#*#` | detect `#>10`
</script>


<script type=kaffeine>
#kaffeine brackets_for_functions
a b + c
a + b c
if(a(b c) == d e)
x = a b c 
</script>

<script type=kaffeine>
#kaffeine englify at backticks arrow unless brackets reverse_blocks brackets_for_functions implicit_vars operators implicit_return implicit_vars half_operators 

unless true
{
  return "unless"
}

unless x and y or f() isnt 10 and not false {
  return "and or not"
}

if x is y, return

if @x == @@Array || @.x == @ || @@.x == @@
  return
</script>