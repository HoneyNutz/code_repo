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

none
