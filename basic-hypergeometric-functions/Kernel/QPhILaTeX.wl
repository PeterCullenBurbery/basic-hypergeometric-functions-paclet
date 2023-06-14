(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QPhILaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

QPhILaTeX // ClearAll

SetAttributes[QPhILaTeX, {Listable}]

QPhILaTeX[input : (_ ? (Function[{symbol}, Quiet[StringMatchQ[Quiet[FullSymbolName[
  symbol], General::strse], "*`QPhI"], StringMatchQ::strse], {}]))[___]
  ] :=
  QPhLaTeX[input /. {QPhI[list : _ ? (Function[{list}, ListQ[list], {
    }]), base_] :> QPh[list, base, Infinity]}]

(* RemoveMathMode[AddSemicolonToQPochhammerTeXString[
 AppendBaseToTeXString[
  BracketsToParentheses[DeleteAllWhitespaceCharactersExceptSpace[
    DeleteQPhIInQPochammerTeXString[
     DeleteNonCommutativeMultiplyInTeXString[
      MakeTeXFragment[
       MakeFirstListSequence[
        ReplaceAndInactivate[
         input]]]]]]], TeXString[Infinity]]]] *)

End[]; (* End `Private` *)

EndPackage[];
