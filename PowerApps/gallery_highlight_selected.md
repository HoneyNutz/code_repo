# This codeblock is to help a user identify when a gallery is hovered over or an item is selected

## Structure

This Snip allows the powerapp to highlight a gallery item based on deeplinking or item selection. Ideally, the user should create a record "var_CurrentItem" to store a selected record they plan on using. Var_CurrentItem should be defined as Blank() on app start, but may be redefined as a record for deeplinking purposes (see deeplink MD).

### Main Gallery

- **Component Type:** Gallery
- **Data Property:** Default

```js
[DEFAULT] var_CurrentItem // Assumes a variable called var_CurrentItem exists and is a record -- it will become the default selected element
```

### Gallery Element (Template Item)

This is the functional gallery list item template

- **Component Type:** Gallery Template Item
- **Data Property:** TemplateFill

```js
[TEMPLATEFILL] If(ThisItem.ID = var_CurrentItem.ID, Color.Gray, Color.Transparent)
```

### Gallery Element Content

If you want to change the text of your content within the gallery item, select the elements and adjust the following property

- **Component Type:** Text
- **Data Property:** Color

```js
[COLOR] If(ThisItem.ID = var_CurrentItem.ID, Color. White, Color Black)
```

If you want to have a hoverable effect...

- **Component Type:** Button
- **Data Property:** HoverFill
- **Data Property:** OnSelect
- **Data Property:** Height / Width
- **Data Property:** PressedFill

```js
[HOVERFILL] RGBA(0,0,0,.05)
[ONSELECT] Select(Parent) //defaults to parents behavior
[HEIGHT or WIDTH] Parent.TemplateHeight || Parent.TemplateWidth
[PRESSEDFILL] RGBA(0,0,0,.1)
```

## Additional Notes

This Functionality is a compound solution to filter a gallery based on a dropdown exposing filters -- this can be split off by removing the initial dropdown. In that case, the Gallery Switch would best be linked to a radio button or checkbox to determine the filter being used
