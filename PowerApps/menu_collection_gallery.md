# This codeblock generates a menu collection that can be called up using a gallery

## Structure

This snip should be placed in the onstart function of the app

### Main Drop Down Box

- **Component Type:** n/a>
- **Data Property:** OnStart
- **Linked Items:** gallery part
- **Required Additional Content:** _N/A_

```js
ClearCollect(
  menuCollection,
  {
    type: "Menu 1",
    icon: Icon.ColorPicker,
    description: "MENU ITEM DESCRIPTION",
    id: 1,
  },
  {
    type: "Menu 2",
    icon: Icon.Help,
    description: "MENU ITEM DESCRIPTION",
    id: 2,
  },
  {
    type: "Menu 3",
    icon: Icon.Person,
    description: "MENU ITEM DESCRIPTION",
    id: 3,
  }
);
```

### Gallery

- **Component Type:** Gallery
- **Data Property:** items

```js
Items: menuCollection;
```

## Additional Notes

This can be customized to fit your scenario but one of the key abilities of this collection is its flexibility. For example, if you wanted to identify a selected flag and a selected background, you could define that as a column. You can not create a navigation code directly in the collection though (unless its a hyperlink)
