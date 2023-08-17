# This codeblock is meant to exist in the global App. It sets a group of variables to create a consistent experience across screens

## Structure

- **Component Type:** <mark>APP</mark>
- **Data Property:** Multiple
- **Linked Items:** Multiple
- **Required Additional Content:** N/A

### Set Variables

```js
//To apply a consisten format at a Screens OnVisible (local scope)
UpdateContext({
  marginLeft: 10,
  marginRight: 10,
  marginTop: 10,
  marginBottom: 10,
  paddingLeft: 15,
  paddingRight: 15,
  paddingTop: 15,
  paddingBottom: 15,
});

//To apply a consisten format across the entire app set variables on the Apps OnStart (global scope)
Set(marginLeft, 10);
Set(marginRight, 10);
Set(marginTop, 10);
Set(marginBottom, 10);
Set(paddingLeft, 15);
Set(paddingRight, 15);
Set(paddingTop, 15);
Set(paddingBottom, 15);
```

### Set Elements

#### Padding

Pick an anchor. This element should reflect the associated variables in each of the `Padding` properties

#### Margin

To define the space between elements, select your anchor and link it to an element abov and below it

```js
//Sets the Y of anchor based on the bottom of the element above it and adds margin to each element
Y = UpperElement.Y + UpperElement.Height + marginTop + marginBottom;

//Repeat this process against each element you link
//X may also be linked in a similar fashipon
```

## Additional Notes

Once we proceed to adjusting spacing it makes the entire solution easier to modify -- additionally it helps keep a consistent look and feel across the app
