

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`MakeLaTeXStringForQPhIExpression;


Begin["`Private`"];

(* Define your public and private symbols here. *)

MakeLaTeXStringForQPhIExpression//ClearAll
SetAttributes[MakeLaTeXStringForQPhIExpression, {Listable}]
MakeLaTeXStringForQPhIExpression[input_QPhI] := 
 AddSemicolonToQPochhammerTeXString[
  AppendBaseToTeXString[
   ReplaceFirstAndLastBracketsInQPochhammerSymbolTeXStringWithParenthe\
ses[DeleteAllWhitespaceCharactersExceptSpace[
     DeleteQPhIInQPochammerTeXString[
      DeleteNonCommutativeMultiplyInTeXString[
       MakeTeXFragment[
        MakeFirstListSequence[
         RearrangeAllMultiplicativeSubExpressions[
          input]]]]]]], Infinity]]

End[]; (* End `Private` *)

EndPackage[];