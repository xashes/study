# Data structures and types
## Data types
The latest ECMAScript standard defines **seven** data types:

- Six primitives:
  - **Boolean** => true and false.
  - **null**
  - **undefined** => A top-level property whose value is *undefined*.
  - **Number**
  - **String**
  - **Symbol** => (new in ECMAScript 2015). A data type whose instances are unique and immutable.
- **object** => named container for values.

## Data type conversion
```
x = "The anser is " + 42 // "The answer is 42"
"37" + 7 // "377"
"37" -7 // 30
```
### Converting strings to numbers
- `parseInt()`
- `parseFloat()`

An alternative method of retrieving a number from a string is with the unary +.
```
'1.1' + '1.1' = '1.11.1'
(+'1.1') + (+'1.1') = 2.2
```
