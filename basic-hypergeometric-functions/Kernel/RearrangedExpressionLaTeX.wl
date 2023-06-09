(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RearrangedExpressionLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)
(*UnsortedComplement//ClearAll*)
RearrangedExpressionLaTeX//ClearAll



RearrangedExpressionLaTeX[input : _?(# =!= Hold &&#=!=HoldForm)[__] | _] := 
StringReplace[
 StringReplace[
  DeleteNonCommutativeMultiplyInTeXString[
   TeXString[
    Activate[ReplaceAndInactivate[
 input
     ],Sum]]], {s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "\\left(" ~~
        Shortest[__] ~~ 
       "\\right)") :> (StringReplace[{"\\text{" ~~ r : Shortest[__] ~~
           "}" :> r}][
      VeryWellPoisedBasicHypergeometricLaTeX[
       ToExpression[s, TeXForm]]]), 
   s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ 
       Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ 
       "," ~~ Shortest[__] ~~ ")" | "\\right)") :> 
    QPhLaTeX[ReplaceAndInactivate[ToExpression[s, TeXForm]]], 
   s : ("\\text{QPhI}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ 
       Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ 
       ")" | "\\right)") :> QPhILaTeX[ToExpression[s, TeXForm]], 
   "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{" ~~ 
     upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> 
    "\\sum_{" <> lower <> "}^{" <> upper <> "}", 
   s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "(" ~~ 
       Shortest[__] ~~ ")") :> 
    VeryWellPoisedBasicHypergeometricLaTeX[
     ToExpression[s, TeXForm]]}], {"\\text{" ~~ s : Shortest[__] ~~ 
    "}" :> s}]
    RearrangedExpressionLaTeX[input_Hold] := 
StringReplace[
 StringReplace[
  DeleteNonCommutativeMultiplyInTeXString[
 Activate[ReplaceAndInactivate[
 #
     ],Sum]], {s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "\\left(" ~~
        Shortest[__] ~~ 
       "\\right)") :> (StringReplace[{"\\text{" ~~ r : Shortest[__] ~~
           "}" :> r}][
      VeryWellPoisedBasicHypergeometricLaTeX[
       ToExpression[s, TeXForm]]]), 
   s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ 
       Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ 
       "," ~~ Shortest[__] ~~ ")" | "\\right)") :> 
    QPhLaTeX[ReplaceAndInactivate[ToExpression[s, TeXForm]]], 
   s : ("\\text{QPhI}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ 
       Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ 
       ")" | "\\right)") :> QPhILaTeX[ToExpression[s, TeXForm]], 
   "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{" ~~ 
     upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> 
    "\\sum_{" <> lower <> "}^{" <> upper <> "}", 
   s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "(" ~~ 
       Shortest[__] ~~ ")") :> 
    VeryWellPoisedBasicHypergeometricLaTeX[
     ToExpression[s, TeXForm]]}], {"\\text{" ~~ s : Shortest[__] ~~ 
    "}" :> s}]& @@ (input)
        RearrangedExpressionLaTeX[input_HoldForm] := 
StringReplace[
 StringReplace[
  DeleteNonCommutativeMultiplyInTeXString[
 Activate[ReplaceAndInactivate[
 #
     ],Sum]], {s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "\\left(" ~~
        Shortest[__] ~~ 
       "\\right)") :> (StringReplace[{"\\text{" ~~ r : Shortest[__] ~~
           "}" :> r}][
      VeryWellPoisedBasicHypergeometricLaTeX[
       ToExpression[s, TeXForm]]]), 
   s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ 
       Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ 
       "," ~~ Shortest[__] ~~ ")" | "\\right)") :> 
    QPhLaTeX[ReplaceAndInactivate[ToExpression[s, TeXForm]]], 
   s : ("\\text{QPhI}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ 
       Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ 
       ")" | "\\right)") :> QPhILaTeX[ToExpression[s, TeXForm]], 
   "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{" ~~ 
     upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> 
    "\\sum_{" <> lower <> "}^{" <> upper <> "}", 
   s : ("\\text{W" ~~ DigitCharacter .. ~~ "}" ~~ "(" ~~ 
       Shortest[__] ~~ ")") :> 
    VeryWellPoisedBasicHypergeometricLaTeX[
     ToExpression[s, TeXForm]]}], {"\\text{" ~~ s : Shortest[__] ~~ 
    "}" :> s}]& @@ (input)
End[]; (* End `Private` *)

EndPackage[];
