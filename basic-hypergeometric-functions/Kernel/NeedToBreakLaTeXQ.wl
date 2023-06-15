(* ::Package:: *)

(* ::Package:: *)
(**)


  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`NeedToBreakLaTeXQ;


Begin["`Private`"];

(* Define your public and private symbols here. *)

NeedToBreakLaTeXQ//ClearAll
NeedToBreakLaTeXQ::usage="NeedToBreakLaTeXQ[input] returns True if putting line breaks in the LaTeX input would keep input from overflowing";
NeedToBreakLaTeXQ[input_?StringQ]:=Module[{data},data=LaTeXExpressionData[input];data["imageWidth"]>data["pixel-threshold"]]
NeedToBreakLaTeXQ[args___]:=Null/;CheckArguments[NeedToBreakLaTeXQ[args],1]
End[]; (* End `Private` *)

EndPackage[];
