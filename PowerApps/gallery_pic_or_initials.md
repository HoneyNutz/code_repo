# This codeblock is to either select a picture or list initials based on lack of picture (or alt_random pics)

## Structure

This Snip is based inside of a gallery circle shape

### Main Drop Down Box

- **Component Type:** <mark>Shape</mark>
- **Data Property:** Items
- **Linked Items:** _depends on usecase_
- **Required Additional Content:** _N/A_

```js
Items: [Array]; // Array can be manually defined (e.g., ["x","y","z"]) or linked to a variable or dataset
```

### Filters

- **Component Type:**
  - Date Filter: <mark>Date Picker</mark> `//start and end + labels to match`
  - Combo box Filter: <mark>Combo Box</mark> `//code can get complex so reference other snips`
  - Drop Down Filter: <mark>Drop Down Box</mark>
- **Data Property:** _multiple_
- **Linked Items:** _multiple_
- **Required Additional Content:** <mark>Layout Containers</mark> are use Case dependent (e.g., layouts/containers may not be needed) and would act as the parents of each filter type.

```js
//LAYOUT CONTAINER (if needed)
Visible: If(main_drop_down_box.SelectedText.Value) = "Matching Content", true, false) // If the main drop down boxes content selection equals 'X' then hide or show the layout.  In this case This layout is duplicated 3x (for x, y, and z).  This could be futher tightened up if you are using a master list where instead of referencing a textvalue you can select an ID then use a Switch Statement to hide or show the appropriate layouts
```

```js
//Date Filter
DefaultDate: Today() // For both Start and End assumes today
//To construct this I used a layout Horizontal container (above) to lay out the Label next to the datepicker and hide it if the date filter wasnt selected

//Combobox Filter
Items: Sort(Filter(Office365Users.SearchUser({searchTerm:comboBox.SearchText}),DisplayName<>Blank()),DisplayName) //searches O365 users for searched value
DisplayFields: ["DisplayName"]
SearchFields: ["DisplayName"]
InputTextPlaceHolder: "Search for User"
isSearchable: true
selectMultiple: false
Visible: If(main_drop_down_box.SelectedText.Value) = "Matching Content", true, false) //unlike the date box -- this filter does not use a layout container so the visibility is set directly on the combobox

//Dropdown Filter
Items: Choices[@Data_Source].dataType // the item in this case is a drop down called "dataType" from a sharepoint site titled "Data_Source"
Visible: If(main_drop_down_box.SelectedText.Value) = "Matching Content", true, false) //unlike the date box -- this filter does not use a layout container so the visibility is set directly on the dropdown
```

### Gallery

- **Component Type:** <mark>Gallery</mark>
- **Data Property:**
  - Items
  - Default
- **Linked Items:** _multiple_
- **Required Additional Content:** _N/A_

```js
Items: Switch(
  main_drop_down_box.SelectedText.Value, // In this case its just a text string
  "CASE 1 Val", //CASE 1 Val = Text String for a Date Filter
  Filter(
    Data_Source,
    Created >= datepicker_start.SelectedDate,
    Created <= datepicker_finish.SelectedDate,
    (flagArchive = false)
  ), // This filters Data Source by Start and Finish -- it also has another filter to confirm if a flag was set to false (this is situational and can be removed)
  "CASE 2 Val", //CASE 2 Val = Text String for Combo Box Filter
  Filter(
    Data_Source,
    (dataType.Value = combobox.SelectedText.Value),
    (flagArchive = false)
  ),
  "CASE 3 Val", //CASE 3 Vas = Test String for Dropdown Filter
  Filter(
    Data_Source,
    (dataType.Property = dropdownbox.Selected.Property),
    (flagArchive = false)
  ),
  Filter(Data_Source, (flagArchive = false))
); // This is the Break Value
```

## Additional Notes

This Functionality is a compound solution to filter a gallery based on a dropdown exposing filters -- this can be split off by removing the initial dropdown. In that case, the Gallery Switch would best be linked to a radio button or checkbox to determine the filter being used
