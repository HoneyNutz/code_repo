# This expression will take a SharePoint Group and email the members in it for a flow

## PROCESS STEPS

- **Step:** Send an HTTP request to SharePoint

```js
//Location of SharePoint Group
Site_Address: METHOD: GET;
URI: _api / web / siteGroups / getByName("<SharePoint group name>") / users;
```

- **Step:** Select

```js
FROM: body('Send_an_HTTP_request_to_SharePoint')?['d']?['results'] //select from prior step
MAP: item()?['Email']
```

- **Step:** Start and Wait for an Approval

```js
ASSIGNED_TO: /*using a function*/ join(body("Select"), ";");
```

## Additional Notes

Thanks to https://tomriha.com/assign-approval-task-to-a-sharepoint-group-with-power-automate/ as thats where this came from
