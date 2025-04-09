# This codeblock will allow you to create a button with an icon and allow the user to hover and select all areas of the button (without the layers interacting negatively)

## Structure

This Snip is based on a primary button (btn_main) and an icon (icon_btn which would partially cover btn_main). A transparent button (btn_ghost) is layered above the button to show hoveractions (this is a trick around current powerapps limitations)

### btn_ghost

- **Component Type:** CLASSIC Button
- **Height:** btn_main.Height
- **Width:** btn_main.Width
- **X:** btn_main.X
- **Y:** btn_main.Y
- **BorderStyle:** BorderStyle.None
- **Color:** Transparent
- **Fill:** Transparent
- **DisabledColor:** Transparent
- **DisabledFill:** Transparent
- **HoverColor:** Transparent
- **HoverFill:** RGBA(0,0,0,0.1)
- **PressedColor:** Transparent
- **PressedFill:** Transparent

If you would like to have the color of the button change when the btn_ghost is pressed, you can modify the code as follows for btn_main and icon_btn

### btn_main

- **Color:** If( btn_ghost.Pressed, RGBA(<select color>), RGBA(<select default>))
- **Fill:** If( btn_ghost.Pressed, RGBA(<select color>), RGBA(<select default>))

### icon_btn

Color: If( btn_ghost.Pressed, RGBA(<select color>), RGBA(<select default>))

## Additional Notes

This is used with the CLASSIC button.  The modern button allows icons but as of this time you can not modify the size of the icon.  This code block works in all situations and will allow complete flexibility on designing custom buttons that have iconography and still allow color changes on hover.
