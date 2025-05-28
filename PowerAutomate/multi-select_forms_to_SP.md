# This expression will format your sharepoint date into a common format

## PROCESS STEPS

- **Step:** Select (data operation)
- **Type:** Expression

### Setup

When pulling from an MS Form you need to trigger when a response is submitted and then "Get response details" function, you will select the from for the form id and then use Response Id our the Response Id

### From

```js
json(output from multiselect field using dynamic content) // this will make the string json
```

### Map

```js
Value | Item(); //Write Value in the key field, and put the expression item() in the value field
```

## Additional Notes

none
