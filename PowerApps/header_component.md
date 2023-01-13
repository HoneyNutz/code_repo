# This codeblock is for a **_Component_** that creates a repeatable Header across screens.

## Structure

- **Component Type:** <mark>TEXT LABEL</mark>
- **Data Property:**
  - Text
  - Width
- **Linked Items:** variable
- **Required Additional Content:** Variable declared on Screen for Component

```js
Text: var_Title; // Link to a variable declared on App
Width: Parent.Width; // Sets the Width the the Parent Elements Width
```

## Additional Notes

On each screen that the component is used, on the <mark>OnVisible</mark> data property set a variable names **_var_Title_**

```js
OnVisible: Set(
  var_Title,
  "Irure consectetur anim fugiat Lorem exercitation cupidatat et sunt."
);
```

each screen will need to update the variable depending on use case
