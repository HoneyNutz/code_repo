# This codeblock is will allow you to show all choices linked to a SharePoint choice Field

## Structure

This snip should generally be placed in the dropdown or combobox. This is a method will pull the choice values from a sharepoint dropdown list.

### Main Drop Down Box

- **Component Type:** Combobox (or dropdown)
- **Data Property:** Items

```js
Sort(Choices('SharePoint_List_Name'.'SharePoint_Field_Name'), Value, Ascending)
```

## Additional Notes

N/A
