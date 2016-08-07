const PI = 3.14;

// object attributes are not protected, so the following statement is executed
// without problems.
const MY_OBJECT = {"key": "value"};
// MY_OBJECT = {"j": "v"} => TypeError: Assigment to constan variable.
MY_OBJECT.key = "otherValue";
console.log(MY_OBJECT);
