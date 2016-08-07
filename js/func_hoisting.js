// for functions, only function declaration gets hoisted to the top and not the
// function expression.

// function declaration
foo();

function foo() {
  console.log("bar");
}

// function expression

baz(); // TypeError: baz is not a function

var baz = function () {
  console.log("bar2");
}
