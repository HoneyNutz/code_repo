# This codeblock is to build a function that colorizes a string of text that matches an input string and attaches the specified color to the original string once parsed

## Structure

This function calls three parameters

- **string:** which is the string of characters you wish the function to modify
- **find:** this parameter identies what string of characters you want the colorizer to trigger on
- **color:** this is the style color tag value that colors the characters

### JavaScript Function

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

## Explanation Notes

Assuming `string` is "This is a Colorful String", `find` is "aeiou", and `color` is "#FF00B4"

> characters = [t],[h],[i],[s],[],[i],[s]...,[i],[n],[g]
> The first step creates an array of character using the `split` method. Since "" is declared it will make an array at the character level. Next we enter a `for` loop that iterates against each character. The `if` statement checks to see if a value of the current character exists in the `find` string -- if it does it returns a colorized character, otherwise it returns a standard character.

## To Test:

### HTML

```html
<h2 id="colorizeMe"><!-- JS MAGIC GOES HERE-->></h2>
```

### JavaScript Addition

```js
//add the following to your script tag (make sure script is below the HTML)
const selection = document.querySelector("#colorizeMe");
const execute = colorizer("This is a Colorful String", "aeiou", "#FF00B4");
selection.innerHTML = execute;
```
