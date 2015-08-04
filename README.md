# Update notices workbook

## Abstract

In this document we will define the process and patterns used to
generate, parse and curate user application update messages.

## Commit Message Integration

Commit messages provide a simple, contextual way to create notes for update messages, we'll use a format such as:

```
<% update-note

Update note here in plain text.

%>
```

We can use markdown formatted text inside the `update-note`
body. Please do not use the `#` `##` `###` (etc.) style of heading
markers, as git will strip these out of your commit message. Instead
use the alternative markdown heading syntax.

```
Heading
=======

Subheading
----------
```

The rest of markdown syntax should not cause you any problems.

### Commit Message Body

Please note that the first line should be a conscise description of the commit to be used as the title.

Follow that with blank line to separate the title from the message body. The update note must be placed in the message body.

### Tagging update-note

You can provide contextual tags to your upgrade note (to make grouping
of notes easier, during the editorial process.) using the syntax:

```
<% upgrade-note(ddr, timesheets, finance, ...)
```

The default ordering of upgrade-notes

## Parsing

Rake task `update-note:parse` parses the current commit log up to a given commit sha, and produces text output of:

* Update notes
* _Finishes_ commit messages
* _Hotfix_ commit messages

Manual curation and editing of this output will be used for the new version upgrade notice.

### Usage


    rake update-note:parse SHA
