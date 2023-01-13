# This codeblock is meant to exist in the Home Screen (and then any subsequent screen you wish to reset on trigger). Once triggered, all variables linked to this will flicker to reset their current states

## Structure

- **Component Type:**
  - <mark>Home Screen</mark>
  - <mark>APP</mark>
  - <mark>elements</mark>
- **Data Property:**
  - OnVisible -- for Home Screen
  - OnStart -- for App
  - Reset -- for elements
- **Linked Items:** _multiple_
- **Required Additional Content:** _multiple_

### App

```js
OnStart: Set(var_Reset, true); //alt: Set(var_Reset, false) immediately following
```

### Home Screen

```js
OnVisible: Set(var_Reset, false);
```

### Any Subsequent Element you want to Reset

```js
Reset: var_Reset = true; //Setting this will trigger the field to reset if var_Reset = true (on app load for example)
```

## Additional Notes

On App OnStart -- the app will trigger to set the var_Reset variable to True to reset all fields that use it. On Screen OnVisible -- the app will set that variable back to false to retain content. It is also possible to flicker it only in the App OnStart but it depends on your situational use case
