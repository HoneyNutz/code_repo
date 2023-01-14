# This codeblock is to build a function that colorizes a string of text that matches an input string and attaches the specified color to the original string once parsed

## Structure

the `colorizer(string,find,color)` function calls three parameters

- `string` which is the string of characters you wish the function to modify
- `find` this parameter identies what string of characters you want the colorizer to trigger on
- `color` this is the style color tag value that colors the characters

## JavaScript

```js
function colorizer(string, find, color) {
  let characters = string.split(""); // Split the string into an array of characters

  for (let i = 0; i < characters.length; i++) {
    if (find.indexOf(characters[i]) !== -1) {
      characters[i] = `<span style="color: ${color};">${characters[i]}</span>`;
    }
  }
  return characters.join(""); // Join the characters back into a string
}
```

## Plain Language

_Assuming Test Conditions Below..._

> `split` the string into an array of characters = ["t","h","i","s"," ","i", ... ,"i","n","g"] _(i.e., This is a Colorful String)_

> `Loop` through each character in the array.

> During Each loop check to see `if` a value of the current character exists in the `find` string

> a value of '-1' indicates a failure to find the character and will simply return the character

> a value of anything else indicates it found the character in the `find` string and therefor will return code to colorize the character inline

## To Test:

```html
<!--HTML-->
<h2 id="colorizeMe"><!-- JS MAGIC GOES HERE-->></h2>

<!--JS-->
<script>
  function colorizer(string, find, color) {
    let characters = string.split(""); // Split the string into an array of characters

    for (let i = 0; i < characters.length; i++) {
      if (find.indexOf(characters[i]) !== -1) {
        characters[
          i
        ] = `<span style="color: ${color};">${characters[i]}</span>`;
      }
    }
    return characters.join(""); // Join the characters back into a string
  }

  //additional JS to trigger the function the test HTML
  const selection = document.querySelector("#colorizeMe");
  const execute = colorizer("This is a Colorful String", "aeiou", "#FF00B4");
  selection.innerHTML = execute;
</script>
```
