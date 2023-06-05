(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`UnsortedComplement;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
UnsortedComplement//ClearAll

UnsortedComplement[alist_, del___, opt : OptionsPattern[]] := 
 Select[alist, {#1} \[Union] Union[del] \[Union] opt =!= 
    del \[Union] opt &]

Options[UnsortedComplement] = {SameTest -> Automatic};

End[]; (* End `Private` *)

EndPackage[];
