# This codeblock is for a Input Text Box that will present a gallery when text is entered into the text input -- _a slightly different flavor than combo-box outputs_

## Structure

- **Component Type:**
  - <mark>Layout</mark>
  - <mark>Input Text Field</mark>
  - <mark>Gallery</mark>
- **Data Property:**
  - Text
  - Width
- **Linked Items:** variable
- **Required Additional Content:** Variable declared on Screen for Component

### Layout (optional)

```js
// Justify via layout fuinctions
```

### Input

```js
// Just Create your Input Field here -- ideally place it inside a for Veritcal layout container so when the gallery displays it will move from center to top (you will need to configure layout to enable it)
Default: defaultVal.Property; // In this case the property will be Display Name
```

### Gallery

```js
Items: Filter(
  Office365Users.SearchUserV2({ searchTerm: input_text_box.Text }).value,
  input_text_box.Text
); //This scenario uses search users -- it searches using the input value from the textg box.  It will search display name, given name, surname etc for those values, the last part ios the logical test where it needs both to be equal to show
Visible: If(IsBlank(input_text_box), false, true); // dont show it if the text box is blank
OnSelect: Set(defaultVal, ThisItem); // sets default val to selected value
```

## Additional Notes

Make sure you add a '+' feature to indicate to the user they need to select one of the options in the gallery. Selection is made on the Gallery Item can select the element to pass to a button

```js
//For Each Element
OnSelect: Select(Parent); // placed on each child element to select the parent telment which sets the default val variable to whatever the item is
```
