# Personal Organizer System

This repository contains the source code for the
[`ConnorGray/Organizer`](https://resources.wolframcloud.com/PacletRepository/resources/ConnorGray/Organizer/)
paclet.

`ConnorGray/Organizer` provides a notebook interface application for organizing project
notes and to-dos.

## Installation

`ConnorGray/Organizer` is available for installation from the [Wolfram Paclet Repository][WPR]:

```wolfram
PacletInstall[ResourceObject["ConnorGray/Organizer"]]
```

*Note: Installing from the Wolfram Paclet Repository currently requires Wolfram Language
v13.0 or later.*

[WPR]: https://resources.wolframcloud.com/PacletRepository/

## First-time setup

Begin by cloning this paclet to your local computer. Next, use `CreatePacletArchive` and
`PacletInstall` to install it to your system.

```wolfram
CreatePacletArchive["/path/to/Organizer"];

PacletInstall["/path/to/Organizer-0.1.0.paclet"];
```

Next, evaluate `` Needs["Organizer`"] ``. If this is your first time setting up the system,
a file selection dialog will appear asking you to select a directory.

```wolfram
Needs["Organizer`];
```

> If you've previously set-up the organizer system, but would like to change the root
> directory the system uses, you do so by evaluating:
>
> ```wolfram
> PersistentValue["CG:Organizer:RootDirectory", "Local"] = SystemDialogInput["Directory"];
> ```
>
> Support for multiple organizer roots is not currently implemented. Instead it's suggested
> that you use the "workspaces" feature to split a single directory into distinct areas.

Once you've chosen a root directory, you may open the palette by evaluating:

```wolfram
CreateOrganizerPalette[]
```

This should open a new empty palette window. New projects may be added by clicking the
"New Project" button and entering a name in the dialog window.

### On-disk directory structure

```
{RootDirectory}/{Workspace..}/{Category..}/{Project..}/Log.nb
```

### Credits

The icons:

* [CalendarWithPlus.svg](./Icons/CalendarWithPlus.svg)
* [UnfinishedTodoList.svg](./Icons/UnfinishedTodoList.svg)
* [Plus.svg](./Icons/Plus.svg)
* [FileLink.svg](./Icons/FileLink.svg)
* [LinkArea.svg](./Icons/LinkArea.svg)
* [OpenFolder.svg](./Icons/OpenFolder.svg)
* [MessageLink.svg](./Icons/MessageLink.svg)
* [BrowserLink.svg](./Icons/BrowserLink.svg)

are from [www.onlinewebfonts.com/icon](http://www.onlinewebfonts.com/icon), licensed as
CC BY 3.0.