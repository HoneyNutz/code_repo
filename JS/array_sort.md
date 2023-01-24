# This codeblock utilizes the Sort method to easily organize the values in an Array 

## Structure

This function calls two parameters

- **a:** which is the string of characters you wish the function to modify
- **b:** this parameter identies what string of characters you want the colorizer to trigger on


### JavaScript Function

```js
let arrayExample = ["g",12,"c",3,"a","1"];
let arraySorted = arrayExample.sort((a,b) => a-b));
```

## Explanation Notes

Using the `sort()` method, as documented [mdm]() is "This is a Colorful String", `find` is "aeiou", and `color` is "#FF00B4"

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
