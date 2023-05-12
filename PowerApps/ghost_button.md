# This codeblock will allow you to create a button with an icon -- use this make that button hoverable

## Structure

This Snip is based on a primary button (btn_main) and an icon (icon_btn which would partially cover btn_main). A transparent button (btn_ghost) is layered above the button to show hoveractions (this is a trick around current powerapps limitations)

### btn_ghost

- **Component Type:** btn
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
- **HoverFill:** RGBA(0,0,0,0.05)
- **PressedColor:** Transparent
- **PressedFill:** Transparent

If you would like to have the color of the button change when the btn_ghost is pressed, you can modify the code as follows for btn_main and icon_btn

### btn_main

- **Color:** If( btn_ghost.Pressed, RGBA(<select color>), RGBA(<select default>))
- **Fill:** If( btn_ghost.Pressed, RGBA(<select color>), RGBA(<select default>))

### icon_btn

Color: If( btn_ghost.Pressed, RGBA(<select color>), RGBA(<select default>))

## Additional Notes

This Functionality may be OBE -- but currently there is no way to hover color an icon or allow a button to show as hovered when a cursor is over an icon. Using a ghost button allows you to somewhat mimic the fucntionality
