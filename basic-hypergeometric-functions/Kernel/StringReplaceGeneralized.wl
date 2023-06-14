(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`StringReplaceGeneralized;

Begin["`Private`"];

(* Define your public and private symbols here. *)

StringReplaceGeneralized // ClearAll

StringReplaceGeneralized // ClearAll

StringReplaceGeneralized::usage = "StringReplaceGeneralized[str,stringrule,n] extends StringReplace to allow replacing just the last occurrences.";

StringReplaceGeneralized[str_ ? (Function[{str}, StringQ[str], {}]), 
    rule_, n_ ? (Function[{n}, IntegerQ[n], {}])] /; MatchQ[rule, Rule[_,
     _] | RuleDelayed[_, _]|{Rule[_,_]}|{RuleDelayed[_,_]}] :=
    Module[{string, ruleDelayed, leftHandSide, rightHandSide},
        string = str;
        ruleDelayed = rule;
        {leftHandSide, rightHandSide} = {First[#], Quiet[Last[#], StringJoin
            ::string]}&[ruleDelayed];
        StringReplacePart[string, Take[StringCases[string, ruleDelayed
            ], n], Take[StringPosition[string, leftHandSide], n]]
    ]

End[]; (* End `Private` *)

EndPackage[];
