

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPhILaTeX;


Begin["`Private`"];

(* Define your public and private symbols here. *)

QPhILaTeX//ClearAll
SetAttributes[QPhILaTeX, {Listable}]
QPhILaTeX[input_Global`QPhI] := 
 RemoveMathMode[AddSemicolonToQPochhammerTeXString[
  AppendBaseToTeXString[
   BracketsToParentheses[DeleteAllWhitespaceCharactersExceptSpace[
     DeleteQPhIInQPochammerTeXString[
      DeleteNonCommutativeMultiplyInTeXString[
       MakeTeXFragment[
        MakeFirstListSequence[
         ReplaceAndInactivate[
          input]]]]]]], TeXString[Infinity]]]]

End[]; (* End `Private` *)

EndPackage[];