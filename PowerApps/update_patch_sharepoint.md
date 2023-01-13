# This codeblock is to Patch a field in sharepoint from a value in Power Apps

## Structure

This Snip takes in variables or content from other fields in the Power App and records the change in SharePoint

### Patch Function

- **Component Type:** <mark>Button/Action</mark>
- **Data Property:** OnSelect
- **Linked Items:** _depends on usecase_
- **Required Additional Content:** _N/A_

```js
OnSelect: Patch(
  sharepoint_list,
  LookUp(
    sharepoint_list,
    (sharepoint_field = variable) // could be a variable.property value
  ), //This Lookup will find all records where the SharePoint List = Variable Value
  {
    sharepoint_field_x: variable, //Set field 'x' to value you are trying to pass through
    sharepoint_field_y: { Value: field }, // Set field 'y' to value you are trying to pass from a selection element
    sharepoint_field_z: "text", // manually set field 'z' to a value
  }
);
```

## Additional Notes

None
