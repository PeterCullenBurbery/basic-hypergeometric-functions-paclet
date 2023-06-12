(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`QHypergeometricPFQData;

Begin["`Private`"];

(* Define your public and private symbols here. *)

(*UnsortedComplement//ClearAll*)

QHypergeometricPFQData // ClearAll

QHypergeometricPFQData::usage = "QHypergeometricPFQData[input] gives data on the q hypergeometric pfq expression input."

QHypergeometricPFQData[input_ ? (QHypergeometricPFQExpressionQ[#]&)] :=
    Module[{list1, list2, length1, length2, base, argument, correctedlength1,
         correctedlength2, list1plusminuscount, list2plusminuscount},
        {list1, list2, base, argument} = Table[Part[input, x], {x, 4}
            ];
        {list1plusminuscount, list2plusminuscount} = Table[Count[n, PlusMinus[
            _]], {n, {list1, list2}}];
        {length1, length2} = Length /@ {list1, list2};
        <|"list1" -> list1, "list2" -> list2, "length1" -> length1 + 
            list1plusminuscount, "length2" -> length2 + list2plusminuscount, "base"
             -> base, "argument" -> argument|>
    ]

End[]; (* End `Private` *)

EndPackage[];
