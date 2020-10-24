BeginPackage["Organizer`"]


(*TODO: Make $ScratchNBRootDirectory relative to TODOs.nb. The hyperlinks made by
        `New Scratch NB` should also be relative, and use $ScratchNBRootDirectory.*)

CreateOrganizerPalette

(* PersistentValue["CG:Organizer:PaletteObject", "FrontEndSession"] = None; *)

If[!DirectoryQ[PersistentValue["CG:Organizer:RootDirectory", "Local"]],
	dir = SystemDialogInput[
		"Directory",
		FileNameDrop[PacletObject["Organizer"]["Location"], -1]
	];

    If[!DirectoryQ[dir],
        If[dir === $Canceled,
            Return[];
        ];
        Throw[StringForm["Invalid project name: ``", dir] ];
    ];

	PersistentValue["CG:Organizer:RootDirectory", "Local"] = dir;
];




Needs["Organizer`LogNotebookRuntime`"];
Needs["Organizer`Palette`"]


EndPackage[]
