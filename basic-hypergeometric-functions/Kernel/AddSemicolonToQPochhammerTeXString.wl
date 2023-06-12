(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`AddSemicolonToQPochhammerTeXString;

Begin["`Private`"];

(* Define your public and private symbols here. *)

AddSemicolonToQPochhammerTeXString // ClearAll

AddSemicolonToQPochhammerTeXString[input_] :=
  StringReplace[{";," -> ";"}][StringInsert[#, ";", First[Last[StringPosition[
    #, "," ~~ __ ~~ "\\right"]]]]]&[input]

End[]; (* End `Private` *)

EndPackage[];
