# This expression will format your sharepoint date into a common format

## Structure

This expression will reformat a date into a normal value

### PROCESS STEPS

- **Step:** Any
- **Type:** Expression

```js
formatDateTime(triggerBody()?['date_field'], 'M/dd/yyyy') // replace triggerBody()?['date_field'] with dynamic selection
```

## Additional Notes

none
