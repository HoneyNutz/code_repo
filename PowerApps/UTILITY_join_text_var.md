# This utility codeblock is provides options in PowerApps to join code to make it potentially more human readable.

## Structure

Joining text can be accomplished in 3 different ways, using the `&` operator, `concatenate()`, or `$...{}` notation. This helps make text dynamic and more human readable

### Set Variable

- **Component Type:** <mark>Screen</mark>
- **Data Property:** OnVisible

```js
//SET VARIABLES
Set(var1, /*code*/);
Set(var2, /*code*/);
```

### Useage

- **Component Type:** <mark>Any Text Component</mark>
- **Data Property:** Any Text Property

```js
//Using '&' Operator
"Hello "&var1&", my name is "&var2&"!";
```
```js
//Using Concatenate
Concatenate("Hello ", var1, ", my name is ",var2,"!");
```
```js
//Using $...{} Notation
$"Hello {var1}, my name is {var2}!"
```

## Additional Notes

This Functionality is a utility class that can make sure users are able to easily understand your code especially during O&M down the road when you do something silly complex
