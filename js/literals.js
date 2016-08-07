// Extra commas in array literals
var fish = ['Lion', , 'Angel'];
console.log(fish[1]); // undefined
console.log(fish.length); // 3

// trailing comma is ignored, it is a best practice to remove them
var myList = ['home', , 'school',];
console.log(myList.length); // 3
console.log(myList[3]); // undefined

var myList2 = ['home', , 'school', ,];
console.log(myList2.length); // 4

// Floating-point literals
console.log(-3e3); // -3000
console.log(.1e-3); // 0.0001

// Object literals
var foo = {a: "alpha", 2: "two"};
console.log(foo.a); // alpha
console.log(foo[2]); // two
// console.log(foo.2); // Error: missing ) after argument list
// console.log(foo[a]); // ReferenceError: a is not defined
console.log(foo['a']); // alpha
console.log(foo['2']); // two

// RegExp literals
var re = /ab+c/;
console.log(re);

// String template literals
console.log(`In JavaScript '\n' is a line-feed.`);
// Multiline strings
console.log(`In JavaScript this is
not legal.`);

// String interpolation
var name = 'Iris', time = 'today';
console.log(`Hello ${name}, how are you ${time}?`);

// You should use string literals unless you specifically need to use a String
// object.

// escape line breaks
var str = "this string \
is broken \
across multiple lines"
console.log(str); // this string is broken across multiple lines.

// mimic "heredoc" syntax
var poem =
"Rose are red,\n\
Violets are blue.\n\
Sugar is sweet,\n\
and so is foo."
console.log(poem);
