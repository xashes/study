class Student {
    fullName: string;
    constructor(public firstName, public middleInitial, public lastName) {
      this.fullName = firstName + " " + middleInitial + " " + lastName;
    }
}

interface Person {
  firstName: string;
  lastName: string;
}
function sayHello(person: Person) {
    return "Hello, " + person.firstName + " " + person.lastName;
}

var user = new Student("Jane", "M.", "User");

document.body.innerHTML = sayHello(user);

var foo = 123;
var bar = foo.toString();
