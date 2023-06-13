(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RearrangedExpressionLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

RearrangedExpressionLaTeX // ClearAll

(* SetAtttributes[RearrangedExpressionLaTeX,{HoldAll}] *)

RearrangedExpressionLaTeX[input_ ? (!HeldExpressionQ[#]&)] :=
    ProcessTeX[StringReplace[
        {
            "\\, _{" ~~ length1 : Repeated[DigitCharacter] ~~ "}" ~~ 
                Shortest[__] ~~ "{" ~~ length2 : Repeated[DigitCharacter] ~~ "}" ~~ Shortest[
                ___] ~~ "(" ~~ list1 : Shortest[__] ~~ ";" ~~ list2 : Shortest[__] ~~
                 ";" ~~ base : Shortest[__] ~~ "," ~~ argument : Shortest[__] ~~ Shortest[
                ___] ~~ ")" :>
                QHypergeometricPFQDataToLaTeX[
                    <|
                        "length1" ->

                            ToExpression[length1, TeXForm] + Count[Table[
                                ToExpression[n, TeXForm], {n, StringSplit[list1, ","]}], PlusMinus[_]
                                ]
                        ,
                        "length2" ->
         

                            ToExpression[length2, TeXForm] + Count[Table[
                                ToExpression[n, TeXForm], {n, StringSplit[list2, ","]}], PlusMinus[_]
                                ]
                        ,
                        "list1" -> Table[ToExpression[n, TeXForm], {n,
                             StringSplit[list1, ","]}]
                        ,
                        "list2" -> Table[ToExpression[n, TeXForm], {n,
                             StringSplit[list2, ","]}]
                        ,
                        "base" -> ToExpression[base, TeXForm]
                        ,
                        "argument" -> ToExpression[argument, TeXForm]
                            
                    |>
                ]
            ,
            s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "\\left(" ~~
                 Shortest[__] ~~ "\\right)") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[
                ToExpression[s, TeXForm]]]
            ,
            s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "(" ~~ Shortest[
                __] ~~ ")") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[ToExpression[
                s, TeXForm]]]
            ,
            s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{"
                 ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ ","
                 ~~ Shortest[__] ~~ ")" | "\\right)") :> QPhLaTeX[ReplaceAndInactivate[
                ToExpression[s, TeXForm]]]
            ,
            s : ("\\text{QPhI}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{"
                 ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ ")"
                 | "\\right)") :> QPhILaTeX[ToExpression[s, TeXForm]]
            ,
            "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{" ~~
                 upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> "\\sum_{"
                 <> lower <> "}^{" <> upper <> "}"
        }
    ][TeXString[Activate[ApplyTransformationsToExpression[input],Sum]]]]

RearrangedExpressionLaTeX[input_ ? (HeldExpressionQ[#]&)] :=
    First[Table[ProcessTeX[StringReplace[
        {
            "\\, _{" ~~ length1 : Repeated[DigitCharacter] ~~ "}" ~~ 
                Shortest[__] ~~ "{" ~~ length2 : Repeated[DigitCharacter] ~~ "}" ~~ Shortest[
                ___] ~~ "(" ~~ list1 : Shortest[__] ~~ ";" ~~ list2 : Shortest[__] ~~
                 ";" ~~ base : Shortest[__] ~~ "," ~~ argument : Shortest[__] ~~ Shortest[
                ___] ~~ ")" :>
                QHypergeometricPFQDataToLaTeX[
                    <|
                        "length1" ->

                            ToExpression[length1, TeXForm] + Count[Table[
                                ToExpression[n, TeXForm], {n, StringSplit[list1, ","]}], PlusMinus[_]
                                ]
                        ,
                        "length2" ->

                            ToExpression[length2, TeXForm] + Count[Table[
                                ToExpression[n, TeXForm], {n, StringSplit[list2, ","]}], PlusMinus[_]
                                ]
                        ,
                        "list1" -> Table[ToExpression[n, TeXForm], {n,
                             StringSplit[list1, ","]}]
                        ,
                        "list2" -> Table[ToExpression[n, TeXForm], {n,
                             StringSplit[list2, ","]}]
                        ,
                        "base" -> ToExpression[base, TeXForm]
                        ,
                        "argument" -> ToExpression[argument, TeXForm]
                            
                    |>
                ]
            ,
            s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "\\left(" ~~
                 Shortest[__] ~~ "\\right)") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[
                ToExpression[s, TeXForm]]]
            ,
            s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "(" ~~ Shortest[
                __] ~~ ")") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[ToExpression[
                s, TeXForm]]]
            ,
            s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{"
                 ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ ","
                 ~~ Shortest[__] ~~ ")" | "\\right)") :> QPhLaTeX[ReplaceAndInactivate[
                ToExpression[s, TeXForm]]]
            ,
            s : ("\\text{QPhI}" ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{"
                 ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[__] ~~ ")"
                 | "\\right)") :> QPhILaTeX[ToExpression[s, TeXForm]]
            ,
            "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{" ~~
                 upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> "\\sum_{"
                 <> lower <> "}^{" <> upper <> "}"
        }
    ][TeXString[Activate[ApplyTransformationsToExpression[currentitem],Sum]]]], {currentitem, 
        {input}}]]


End[]; (* End `Private` *)

EndPackage[];
