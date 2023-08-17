# This utility codeblock enables deep linking within a powerapp so that you can link to a specific screen/id when emailed.

## Structure

Deep linking the developer to send a link to a specfic id/screen to users, it requires multiple code lines to properly implement. A Parameter is passed using '&param_X=value_Y' in the URL, and you can add additionaly params as needed with an additional '&' + param

### Initial Screen Selection

This will select the start screen based on what param is passed

- **Component Type:** App
- **Data Property:** StartScreen

You can use either a SWITCH statement or an IF (depending on the numbert of options)

```js
IF(Param("paramName")="test param Value"), Screen1, Screen2)

//OR

SWITCH(Param("paramName"),
  "test param Value", Screen1,
  "test param value 2", Screen2,
  "test param value 3", Screen3,
  DefaultScreen
)
```

### Specific ID Selection

This will create a variable "varItem" that is the Identifier of a specific data set record

- **Component Type:** App
- **Data Property:** OnStart

```js
If(
  !IsBlank(Param("ID")),
  Set(
    varItem,
    LookUp(
      "SharePoint List Name",
      (ID = Value(Param("ID"))) //its a value bc param returns string not num
    )
  )
);
```

## Additional Notes

This Functionality is a utility class that can make sure users are able to easily understand your code especially during O&M down the road when you do something silly complex
