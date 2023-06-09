(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TransformVeryWellPoisedHypergeometricLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*TransformVeryWellPoisedHypergeometricLaTeX//ClearAll*)
TransformVeryWellPoisedHypergeometricLaTeX//ClearAll

TransformVeryWellPoisedHypergeometricLaTeX[input_] := 
 StringReplace[{s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ 
        "\\left(" ~~ Shortest[__] ~~ "\\right)") :> (DeleteText[
       VeryWellPoisedBasicHypergeometricLaTeX[
        ToExpression[s, TeXForm]]]), 
    s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "(" ~~ 
        Shortest[__] ~~ ")") :> 
     VeryWellPoisedBasicHypergeometricLaTeX[
      ToExpression[s, TeXForm]]}][input]
End[]; (* End `Private` *)

EndPackage[];
