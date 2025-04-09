# This codeblock formats numberic (and text) strings into phone numbers for display

## Structure

- **Component Type:** <mark>Label</mark>
- **Data Property:** Text
- **Linked Items:** Input / Text field
- **Required Additional Content:** N/A

### US

```js
If(
    // First, check if the input is purely numeric
    IsNumeric(VarInputPhoneNumber),

    // If numeric, proceed with length checks using Switch
    Switch(
        Len(VarInputPhoneNumber), // Check the length of the numeric string

        11, // Case: Length is 11
            // Check if the 11-digit number starts with '1'
            If(
                Left(VarInputPhoneNumber, 1) = "1",
                // Format for 11 digits starting with 1
                 "+1 (" & Mid(VarInputPhoneNumber, 2, 3) & ") " & Mid(VarInputPhoneNumber, 5, 3) & "-" & Mid(VarInputPhoneNumber, 8, 4),
                 // If 11 digits but doesn't start with '1', return original
                 VarInputPhoneNumber
            ),

        10, // Case: Length is 10
            // Format for 10 digits
            "(" & Left(VarInputPhoneNumber, 3) & ") " & Mid(VarInputPhoneNumber, 4, 3) & "-" & Mid(VarInputPhoneNumber, 7, 4),

        // Default case for Switch (length is not 10 or 11)
        VarInputPhoneNumber // Return original if length doesn't match
    ),

    // Else for IsNumeric check: If the input is not purely numeric
    VarInputPhoneNumber // Return the original input as is
)
```

### INTERNATIONAL + US

```js
With(
    {
        // Get the input text
        OriginalInput: TextInput1.Text, 
        
        // Clean the input: remove common formatting like spaces, hyphens, parentheses
        CleanedInput: Substitute(Substitute(Substitute(Substitute(TextInput1.Text, "-", ""), " ", ""), "(", ""), ")", "")
    },
    With(
        {
            // Check if the cleaned input starts with a '+' indicating an international code
            IsPotentiallyInternational: StartsWith(CleanedInput, "+"),
            
            // Extract the numeric part (remove '+' if it exists)
            NumericPart: If(StartsWith(CleanedInput, "+"), 
                            Mid(CleanedInput, 2, Len(CleanedInput) - 1), 
                            CleanedInput
                         )
        },
        // First, validate if the extracted NumericPart contains ONLY digits. If not, return the original.
        If( Not(IsMatch(NumericPart, Match.Digits)), 
            OriginalInput, // Return original if non-digits found after cleaning (e.g., "123-abc")
            
            // If it contains only digits, proceed with formatting logic
            If(
                // Condition 1: International Format
                // Check if it started with '+' AND the remaining numeric part has a plausible length (e.g., 10 to 15 digits)
                IsPotentiallyInternational && Len(NumericPart) >= 10 && Len(NumericPart) <= 15, 
                // Format as: + NNNNNNNNNN... (simple international format)
                "+ " & NumericPart, 
                
                // Condition 2: US/Canada Format (Default if no '+')
                // Check if it did NOT start with '+' AND has exactly 10 digits
                !IsPotentiallyInternational && Len(NumericPart) = 10, 
                // Format as: (XXX) XXX-XXXX
                "(" & Left(NumericPart, 3) & ") " & Mid(NumericPart, 4, 3) & "-" & Right(NumericPart, 4),
                
                // Condition 3: Fallback - Doesn't match International or US 10-digit patterns
                // Return the original input string
                OriginalInput 
            )
        )
    )
)
```

## Additional Notes
The international format version includes a cleaning function which can be injected into the US if you are trying to clean strings.  Recommendation is to only allow numberic inputs for phone number to reduce the need for the cleansing function
