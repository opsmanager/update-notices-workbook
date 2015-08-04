# Git Log Parser

## The Flow

1. When the developer requires a message that needs to be shown to the user, they include it in the commit message.

The subject can be written in markdown

E.g

[Finishes #2323242] Added recommended quantities

<% update-note

\# What's New

Recommended quantities can be added to consumables. Recommended Quantities
can be found in Admin section, under Inventory Dropdown

%>

2. When a deployment is done, the script will read all new commit messages for the deployment and extracts update-notes.


Update note extraction ->


3. The content of the update-note, along with the SHA would be saved in the database. (API? Authentication?)
SHA would be a unique field.

4. Each deployment would have a version string.
E.g v1.0.1 - 201508271355

5. When a new version is released, the user would see his name to the top left higlighted to indicate new release notes.
(We would need to keep track of whether the user user has already seen it or not)

6. Clicking "What's new" in the dropdown, they would see

v1.0.1 - 201508271355

NEW: Recommended quantities can now be added to consumables. Recommended Quantities page
can be found in Admin section, under Inventory Dropdown

BUGFIX: The DDR not saving due to X is now solved

NOTE: We are working hard to bring feature Y for you. It will be ready soon.
