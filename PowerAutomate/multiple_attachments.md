# This codeblock attaches MULTIPLE attachments to an email/approval

## Structure

This Snip will iterate through an array of attachments

### PROCESS STEPS

- **Step:** Get Attachments

```js
Sit Address: 'select list site';
List Name: 'select list name';
Id: ID;
```

- **Step:** Initialize Variable

```js
Name: Attachments;
Type: Array;
Value: "blank";
```

- **LOOP:** Apply to Each (loop)
  - **Step:** Get Attachment Content

```js
Site Address: 'select list site';
List Name: 'select list name';
Id: ID;
File Identifier: Id; //from get attachments
```

- **Step:** Append to Array Variable

```js
Name: Attachments;
Value: {
  "name": 'DisplayName',
  "content": 'AttachmentContent'
}
```

## Additional Notes

This Functionality will allow you to append a variable "Attachments" to an email or Approval flow. If it goes on an approval flow it will NOT show up in Teams, only on the email.
