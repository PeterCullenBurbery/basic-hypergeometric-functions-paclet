

(* ::Package:: *)

  BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`MakeLaTeXStringForQPhExpression;


Begin["`Private`"];

(* Define your public and private symbols here. *)
MakeLaTeXStringForQPhExpression//ClearAll
SetAttributes[MakeLaTeXStringForQPhExpression, {Listable}]
MakeLaTeXStringForQPhExpression[input_QPh] := 
 AddSemicolonToQPochhammerTeXString[
  AppendBaseToTeXString[
   ReplaceFirstAndLastBracketsInQPochhammerSymbolTeXStringWithParenthe\
ses[DeleteAllWhitespaceCharactersExceptSpace[
     DeleteQPhInQPochammerTeXString[
      DeleteNonCommutativeMultiplyInTeXFragmentString[
       MakeTeXFragment[
        MakeFirstListSequence[
         TakeOutLastArgument[
          MapAllPositionQInFrontOfAllMultiplicativeExpressions[
           input]]]]]]]], Last[input]]]

           

End[]; (* End `Private` *)

EndPackage[];