# This codeblock is built to Navigate once a timer has expired -- it is best for a submittal item.

## Structure

- **Component Type:** <mark>Timer</mark>
- **Data Property:**
  - Duration
  - OnTimerEnd
  - Visible
- **Linked Items:** _N/A_
- **Required Additional Content:** _N/A_

```js
Duration: 6000;

OnTimerEnd: Reset(x); //Reset X -- where X is the original screen or a variable that forces a reset of all content
Navigate(y, Fade); // Navigates to Screen and uses the Fade function (can be set to something else)

Visible: false; //hide it
```

## Additional Notes

none
