# This utility will lock permissions on a sharepoint list to just Powerapps.

## Structure

Unlike other items, this is a SharePoint Permissions group in SharePoint. Instructions will be provided discretley vs in Powerapps Code

### Create Permissions Level

On your SharePoint site, go to 'Site Settings'.
Click the 'Site Permissions' link (Under the 'Users and Permissions' section).
At the top of the page, click on the 'Permissions' tab.
Click the 'Permission Levels' button (In the 'Manage' group)
Make sure you are on the parent site (a noticiation bar will appear if you are not)
Ideally click the precreated "Contribute" Permissions level and select "make a copy"
Call the Permissions level "Contribute via PowerApps"
Uncheck "View Application Pages"
This will restrict them from accessing via sharpoint -- alternatively you can ensure the following are selected

Select the following in List Permissions:

- Add Items
- Edit Items
- Delete Items
- View Items
- Open Items
- View Versions
- Delete Versions
- Create Alerts

Select the following in Site Permissions:

- Browse Directories
- Use Self-Service Site Creation
- View Pages
- Browse User Information
- Use Remote Interfaces
- Use Client Integration Features
- Open
- Edit Peronal User Information

Select the following in Personal Permissions:

- Manage Personal Views
- Add/Remove Personal Web Parts
- Update Personal Web Parts

### Assign Permissions

Generally I set the Stock Site Viewer group to have the PowerApps only permissions
I set everyone for the most part -- but you can identify specific users/groups as needed

## Additional Notes

This is a feature that should be stock.
