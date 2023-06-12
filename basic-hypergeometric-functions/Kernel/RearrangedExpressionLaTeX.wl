(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`RearrangedExpressionLaTeX;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

RearrangedExpressionLaTeX // ClearAll

RearrangedExpressionLaTeX[input : _ ? (# =!= Hold && # =!= HoldForm&)[
    __] | _] :=
    ProcessTeX[StringReplace[
        {
            s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "\\left(" ~~
                 Shortest[__] ~~ "\\right)") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[
                ToExpression[s, TeXForm]]](*for very well poised basic hypergeometric Latex
                
                
                
                
        *),
            s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "(" ~~ Shortest[
                __] ~~ ")") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[ToExpression[
                s, TeXForm]]](*for very well poised basic hypergeometric Latex*),
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
    ][TeXString[PolynomializeFractionPower[VeryWellPoisedHypergeometricToNumerator[
        Activate[RearrangeExpression[input], Sum]]]]]]

RearrangedExpressionLaTeX[input : (Hold | HoldForm)[__]] :=
    Function[n,
            ProcessTeX[StringReplace[
                {
                    s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "\\left("
                         ~~ Shortest[__] ~~ "\\right)") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[
                        ToExpression[s, TeXForm]]](*for very well poised basic hypergeometric Latex
                        
                        
                *),
                    s : ("\\text{W" ~~ DigitCharacter.. ~~ "}" ~~ "("
                         ~~ Shortest[__] ~~ ")") :> ProcessTeX[VeryWellPoisedBasicHypergeometricLaTeX[
                        ToExpression[s, TeXForm]]](*for very well poised basic hypergeometric Latex
                        
                        *) ,
                    s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~ "\\{" | 
                        "\\left\\{" ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[
                        __] ~~ "," ~~ Shortest[__] ~~ ")" | "\\right)") :> QPhLaTeX[ReplaceAndInactivate[
                        ToExpression[s, TeXForm]]]
                    ,
                    s : ("\\text{QPhI}" ~~ "(" | "\\left(" ~~ "\\{" |
                         "\\left\\{" ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~ Shortest[
                        __] ~~ ")" | "\\right)") :> QPhILaTeX[ToExpression[s, TeXForm]]
                    ,
                    "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{"
                         ~~ upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> "\\sum_{"
                         <> lower <> "}^{" <> upper <> "}"
                }
            ][TeXString[PolynomializeFractionPower[VeryWellPoisedHypergeometricToNumerator[
                Activate[RearrangeExpression[n], Sum]]]]]]
        ] @@ input

(* 
RearrangedExpressionLaTeX[input_Hold] :=
    StringReplace[StringReplace[DeleteNonCommutativeMultiplyInTeXString[
        Activate[ReplaceAndInactivate[#], Sum]], {s : ("\\text{W" ~~ DigitCharacter
        .. ~~ "}" ~~ "\\left(" ~~ Shortest[__] ~~ "\\right)") :> (StringReplace[
        {"\\text{" ~~ r : Shortest[__] ~~ "}" :> r}][VeryWellPoisedBasicHypergeometricLaTeX[
        ToExpression[s, TeXForm]]]), s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~
         "\\{" | "\\left\\{" ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~
         Shortest[__] ~~ "," ~~ Shortest[__] ~~ ")" | "\\right)") :> QPhLaTeX[
        ReplaceAndInactivate[ToExpression[s, TeXForm]]], s : ("\\text{QPhI}" 
        ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ Shortest[__] ~~ "\\}" | 
        "\\right\\}" ~~ "," ~~ Shortest[__] ~~ ")" | "\\right)") :> QPhILaTeX[
        ToExpression[s, TeXForm]], "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{"
         ~~ upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> "\\sum_{"
         <> lower <> "}^{" <> upper <> "}", s : ("\\text{W" ~~ DigitCharacter
        .. ~~ "}" ~~ "(" ~~ Shortest[__] ~~ ")") :> VeryWellPoisedBasicHypergeometricLaTeX[
        ToExpression[s, TeXForm]]}], {"\\text{" ~~ s : Shortest[__] ~~ "}" :>
         s}]& @@ (input)

RearrangedExpressionLaTeX[input_HoldForm] :=
    StringReplace[StringReplace[DeleteNonCommutativeMultiplyInTeXString[
        Activate[ReplaceAndInactivate[#], Sum]], {s : ("\\text{W" ~~ DigitCharacter
        .. ~~ "}" ~~ "\\left(" ~~ Shortest[__] ~~ "\\right)") :> (StringReplace[
        {"\\text{" ~~ r : Shortest[__] ~~ "}" :> r}][VeryWellPoisedBasicHypergeometricLaTeX[
        ToExpression[s, TeXForm]]]), s : ("\\text{QPh}" ~~ "(" | "\\left(" ~~
         "\\{" | "\\left\\{" ~~ Shortest[__] ~~ "\\}" | "\\right\\}" ~~ "," ~~
         Shortest[__] ~~ "," ~~ Shortest[__] ~~ ")" | "\\right)") :> QPhLaTeX[
        ReplaceAndInactivate[ToExpression[s, TeXForm]]], s : ("\\text{QPhI}" 
        ~~ "(" | "\\left(" ~~ "\\{" | "\\left\\{" ~~ Shortest[__] ~~ "\\}" | 
        "\\right\\}" ~~ "," ~~ Shortest[__] ~~ ")" | "\\right)") :> QPhILaTeX[
        ToExpression[s, TeXForm]], "\\underset{" ~~ lower : Shortest[__] ~~ "}{\\overset{"
         ~~ upper : Shortest[__] ~~ "}{\\sum" ~~ Shortest[___] ~~ "}}" :> "\\sum_{"
         <> lower <> "}^{" <> upper <> "}", s : ("\\text{W" ~~ DigitCharacter
        .. ~~ "}" ~~ "(" ~~ Shortest[__] ~~ ")") :> VeryWellPoisedBasicHypergeometricLaTeX[
        ToExpression[s, TeXForm]]}], {"\\text{" ~~ s : Shortest[__] ~~ "}" :>
         s}]& @@ (input) *)

End[]; (* End `Private` *)

EndPackage[];
