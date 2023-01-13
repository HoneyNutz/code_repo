# This codeblock is meant to exist in the global App. It sets a group of variables to create a consistent experience across screens

## Structure

- **Component Type:** <mark>APP</mark>
- **Data Property:** Text
- **Linked Items:** Secondary Gallery
- **Required Additional Content:** Type Description on gallery content

```js
    If(IsBlank(gallery), // If  gallery is unselected
        "Eu incididunt elit occaecat mollit tempor proident sint. Commodo voluptate voluptate qui esse minim aliquip. Sunt labore nulla reprehenderit aliqua." //Some Default Statement
        gallery.Selected.description) //else show description from gallery's selected item
```

## Additional Notes

Select _Default_ Data Property in gallery and set it to <mark>{}</mark> which will cause no default selection to be made in the gallery
