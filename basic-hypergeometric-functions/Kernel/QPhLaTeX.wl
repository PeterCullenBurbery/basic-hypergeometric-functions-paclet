(* ::Package:: *)

(* ::Package:: *)

(**)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPhLaTeX;

(* Global`QPh; *)

Begin["`Private`"];

(* Define your public and private symbols here. *)

QPhLaTeX // ClearAll

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

QPhLaTeX::usage = "QPhLaTeX[input] gives LaTeX for the QPh expression input";

QPhLaTeX[input: (_? (Function[{symbol}, Quiet[StringMatchQ[Quiet[FullSymbolName[
  symbol], General::strse], "*`QPh"], StringMatchQ::strse], {}]))[___]] :=
  Module[{transformedExpression, inputWithFirstListSequence, MostExceptLast,
     last},
    transformedExpression = ApplyTransformationsToExpression[input];
    inputWithFirstListSequence = MakeFirstListSequence[transformedExpression
      ];
    AssociationThread[{removeSuffix @ SymbolName[Unevaluated @ transformedExpression
      ], removeSuffix @ SymbolName @ Unevaluated @ inputWithFirstListSequence
      } -> {transformedExpression, inputWithFirstListSequence}];
    {MostExceptLast, last} = MapAt[Last, {2}][Reverse[TakeDrop[inputWithFirstListSequence,
       -1]]];
    StringAppend[PutSemicolonBeforeLastTerm @ StringDelete["\\text{**}"
       | "\\text{QPh}"] @ TeXString[MostExceptLast], "_{" <> TeXString[last
      ] <> "}"]
  ]

(* RemoveMathMode[AddSemicolonToQPochhammerTeXString[
 AppendBaseToTeXString[
  BracketsToParentheses[
   DeleteAllWhitespaceCharactersExceptSpace[
    DeleteQPhInQPochammerTeXString[
     DeleteNonCommutativeMultiplyInTeXString[
      MakeTeXFragment[
       TakeOutLastArgument[
        MakeFirstListSequence[
         ApplyTransformationsToExpression[input]]]]]]]], 
  Last[input]]]]       *)

End[]; (* End `Private` *)

EndPackage[];
