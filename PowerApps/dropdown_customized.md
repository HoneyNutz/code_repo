# This codeblock is will allow you to enter custom values to a dropdown selector (based on a sharepoint dropdown)

## Structure

This snip should generally be placed in the APP screen. This is a method to pull the choice values from a sharepoint dropdown list. A custom value should only be used in specific cases -- otherwise its best to use a combo box.

A use case example may include a gallery that filters based on selection. You can force custom values like 'Group A' that is a combination of elements within a dropdown "Element 1, Element 2, and Element 3". The filter would require a switch/filter statement to address custom content.

### Main Drop Down Box

- **Component Type:** APP
- **Data Property:** OnStart

```js
ClearCollect ("collectionName", {Value: "custom value"}, Sort(Choices("SharePoint List"."SharePoint Field")))
```

## Additional Notes

The user should call on the collection for the dropdown on the APP OnStart screen, just in case deeplinking changes load screen. And again -- if you are attempting to just place a holding value (drop downs dont allow helper text), use a combobox instead.
