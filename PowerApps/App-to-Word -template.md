# This utility codeblock is to format code to make it more human readable.

## Structure

The `WITH()` utility function is useful to make complex code more human readable using locally scoped variables to help make a codeblock viable in plain text

### Main Drop Down Box

- **Component Type:** <mark>ANY</mark>
- **Data Property:** ANY

```js
With({
  var1: /*code*/,;
  var2: /*code*/,;
  varN: /*code*/;
},
(var1 * var2) /varN
);
```

## Additional Notes

This Functionality is a utility class that can make sure users are able to easily understand your code especially during O&M down the road when you do something silly complex
