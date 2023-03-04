# This expression will take HTML input and create a PDF from your data

## PROCESS STEPS

- **Step:** Compose (data operation)

```js
INPUT: //Nothing Terribly crazy in this step -- just copy standard HTML/BODY/STYLE Code into the input field
```

- **Step:** Create a File (One Drive for Business)

```js
FOLDER: Location of File
NAME: Name of HTML //input.html
CONTENTS: Outputs // from prior compose step
```

- **Step:** Convert File using Path (One Drive for Business)

```js
FILEPATH: Path; // from prior file step
Type: PDF;
```

- **Step:** Create a File (One Drive for Business)

```js
FOLDER: Location of File //final location
NAME: Name of PDF //output.pdf
CONTENTS: File Content // from convert step
```

## Additional Notes

Here is Some example Code to format your HTML

```html
<html>
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans"
      rel="stylesheet"
      type="text/css"
    />
    <title>Sample 8.5x11 Letter</title>
    <style>
      *,
      *:before,
      *:after {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
      }

      body {
        width: 8.5in;
        height: 11in;
        margin: 0;
        padding: 0;
      }

      .page {
        page-break-after: always;
        position: relative;
        width: 8.5in;
        height: 11in;
      }

      .page-content {
        position: absolute;
        width: 8.125in;
        height: 10.625in;
        left: 0.1875in;
        top: 0.1875in;
        background-color: rgba(0, 0, 0, 0.2);
      }

      .text {
        position: relative;
        left: 20px;
        top: 20px;
        width: 6in;
        font-family: "Open Sans";
        font-size: 30px;
      }

      #return-address-window {
        position: absolute;
        left: 0.625in;
        top: 0.5in;
        width: 3.25in;
        height: 0.875in;
        background-color: rgba(255, 0, 0, 0.5);
      }

      #return-address-text {
        position: absolute;
        left: 0.07in;
        top: 0.34in;
        width: 2.05in;
        height: 0.44in;
        font-size: 0.11in;
      }

      #return-logo {
        position: absolute;
        left: 0.07in;
        top: 0.02in;
        width: 2.05in;
        height: 0.3in;
      }

      #recipient-address-window {
        position: absolute;
        left: 0.625in;
        top: 1.7in;
        width: 4in;
        height: 1in;
        background-color: rgba(255, 0, 0, 0.5);
      }

      #recipient-address-text {
        position: absolute;
        left: 0.07in;
        top: 0.05in;
        width: 2.92in;
        height: 0.9in;
      }

      #white-box {
        background-color: white;
        width: 3.15in;
        height: 2in;
        position: absolute;
        left: 0.6in;
        top: 0.84in;
      }
    </style>
  </head>

  <body>
    <div class="page">
      <div class="page-content">
        <div class="text" style="top: 3in">
          If you are using the merge_variables argument, you can add variables
          like this: {{variable_name}}.
        </div>
      </div>

      <!-- This div represents a white box which will be printed on top of all artwork to hold address and barcode information. Any content provided underneath this area will be covered. -->
      <div id="white-box"></div>

      <div id="return-address-window">
        <div id="return-logo">Room for company logo.</div>
        <div id="return-address-text">
          The Return Address will be printed here. The red area will be visible
          through the envelope window.
        </div>
      </div>
      <div id="recipient-address-window">
        <div id="recipient-address-text">
          The Recipient's Address will be printed here. The red area will be
          visible through the envelope window.
        </div>
      </div>
    </div>
    <div class="page">
      <div class="page-content">
        <div class="text">This is a second page.</div>
      </div>
    </div>
  </body>
</html>
```
