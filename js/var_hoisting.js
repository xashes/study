// hoisting: Variables in javaScript are in a sense "hoisted" or lifted to the
// top of the function or statement. However, variables that are hoisted will
// return a value of undefined.

console.log(x === undefined);
var x = 3;
console.log(x);

// will return a value of undefined
var myvar = "my value";

(function() {
  console.log(myvar);
  var myvar = "local value";
  console.log(myvar);
})();

// The above eyamples will be interpreted the same as:
var y;
console.log(y === undefined); // true
y = 3;

var myvar2 = "my value";

(function () {
  var myvar2;
  console.log(myvar2); // undefined
  myvar = "local value"
})();

// `let (const)` *will not hoist* the variable to the top of the block.
console.log(l); // ReferenceError
let l = 3;
