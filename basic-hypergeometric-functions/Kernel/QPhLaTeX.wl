

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPhLaTeX;

(* Global`QPh; *)
Begin["`Private`"];

(* Define your public and private symbols here. *)
QPhLaTeX//ClearAll
SetAttributes[QPhLaTeX, {Listable}]
(* QPhLaTeX[input_Global`QPh] := 
RemoveMathMode[AddSemicolonToQPochhammerTeXString[
 AppendBaseToTeXString[
  BracketsToParentheses[
   DeleteAllWhitespaceCharactersExceptSpace[
    DeleteQPhInQPochammerTeXString[
     DeleteNonCommutativeMultiplyInTeXString[
      MakeTeXFragment[
       TakeOutLastArgument[
        MakeFirstListSequence[
         ReplaceAndInactivate[input]]]]]]]], 
  Last[input]]]] *)

     QPhLaTeX[input_] := 
RemoveMathMode[AddSemicolonToQPochhammerTeXString[
 AppendBaseToTeXString[
  BracketsToParentheses[
   DeleteAllWhitespaceCharactersExceptSpace[
    DeleteQPhInQPochammerTeXString[
     DeleteNonCommutativeMultiplyInTeXString[
      MakeTeXFragment[
       TakeOutLastArgument[
        MakeFirstListSequence[
         ReplaceAndInactivate[input]]]]]]]], 
  Last[input]]]]      

End[]; (* End `Private` *)

EndPackage[];