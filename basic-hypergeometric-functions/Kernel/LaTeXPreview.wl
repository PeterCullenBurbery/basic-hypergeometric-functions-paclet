

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`LaTeXPreview;


Begin["`Private`"];

(* Define your public and private symbols here. *)

LaTeXPreview//ClearAll
Options[LaTeXPreview] = {APIFunction -> "Codecogs"};
LaTeXPreview[tex_String, args : OptionsPattern[]] := Module[
  {},
  Switch[OptionValue[APIFunction],
   "Codecogs", Codecogs[tex, args],
   "LaTeX2PNG", LaTeX2PNG[tex, args],
   _, Null
   ]
  ]

Codecogs[tex_String, OptionsPattern[]] := 
  Import["https://latex.codecogs.com/png.latex?" <> URLEncode@tex, 
   "PNG"];

LaTeX2PNG[tex_?StringQ, OptionsPattern[]] := Module[
  {api, body, http, raw},
  api = "https://latex2png.com/api/convert";
  body = <|
    "auth" -> <|"user" -> "guest", "password" -> "guest"|>,
    "latex" -> tex,
    "resolution" -> 120,
    "color" -> "000000"
    |>;
  http = 
   HTTPRequest[
    api, <|"Body" -> ExportString[body, "json"], Method -> "POST"|>];
  raw = URLExecute[http, "Interactive" -> False, "RawJSON"];
  Switch[
   raw["result-code"],
   0, Return@Import["https://latex2png.com" <> raw["url"], "PNG"],
   _, "Error"
   ]
  ]
  LaTeXPreview[input_]:=LaTeXPreview[TeXString[input]]


End[]; (* End `Private` *)

EndPackage[];
