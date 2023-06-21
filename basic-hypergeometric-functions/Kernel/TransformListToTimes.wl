(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`TransformListToTimes;

Begin["`Private`"];

(* Define your public and private symbols here. *)

ClearAll[TransformListToTimes]

TransformListToTimes[n : {_?NumericQ...}] :=
    Times @@ n

TransformListToTimes[n : {_ ..}] :=(*Switch[PutNumbersInFrontOfList[n],{_Symbol},First@n,{_?NumericQ,_Symbol},Times@@n,{Repeated[_?NumericQ,{2,Infinity}],_Symbol}]*)Module[
    {putnumbersinfront, numericGather, gatherSimilarSymbols, multiplySimilarSymbols,
     multiplyNumbers, listWithQInFront},
        putnumbersinfront = PutNumbersInFrontOfList[n];
        numericGather = Extract[putnumbersinfront, #]& /@ {DeleteElements[
            Position[putnumbersinfront, _?NumericQ, {1}, Heads -> False], {{0}, {
            }}], DeleteElements[Position[putnumbersinfront, _ ? (!NumericQ[#]&), 
            {1}, Heads -> False], {{0}, {}}]};
        gatherSimilarSymbols = MapAt[Gather, {{-1}}] @ numericGather;
            
        multiplySimilarSymbols = MapAt[Times @@@ #&, {{-1}}][gatherSimilarSymbols
            ];
        listWithQInFront = MapAt[PositionQInFrontOfList, {{-1}}][multiplySimilarSymbols
            ];
        multiplyNumbers = MapAt[Apply[Times], {{1}}][listWithQInFront
            ];
        ReplaceAll[{{number : _?NumericQ, {symbol_}} :> number * symbol,
             {number : _?NumericQ, symbols : {firstSymbol_, othersymbols : Repeated[
            _]}} :> Times @@ {number * firstSymbol, othersymbols
            }}][multiplyNumbers]
    ]

End[]; (* End `Private` *)

EndPackage[];
