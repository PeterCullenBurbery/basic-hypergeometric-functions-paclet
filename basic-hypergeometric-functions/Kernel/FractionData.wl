(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

PeterBurbery`BasicHypergeometricFunctions`FractionData;

Begin["`Private`"];

FractionData // ClearAll

FractionData::usage = "FractionData[x] gives data on a fraction."

FractionData[x_] :=
  Module[{numerator, denominator, basicData, listData, interestingData,
     organizedData, moreData, postData, postDataProduct, preData, preDataProduct,
     combinedData, smallerFractionData, allData, totalProductList, totalProductProduct,
     deletedCasesData},
    {numerator, denominator} = NumeratorDenominator[x];
    basicData = AssociationThread[{"numerator", "denominator"} -> Table[
      <|"value" -> term, "head" -> Head[term], "length" -> Length[term]|>, 
      {term, {numerator, denominator}}]];
    listData =
      AssociationThread[
        {"numerator", "denominator"} ->
          Table[
            <|
              "list" ->
                Which[
                  basicData[term]["head"] === NonCommutativeMultiply 
                    && 1 < basicData[term]["length"],
                    List @@ basicData[term]["value"]
                  ,
                  !(basicData[term]["head"] === NonCommutativeMultiply
                     && 1 < basicData[term]["length"]),
                    List @ basicData[term]["value"]
                ]
            |>
            ,
            {term, {"numerator", "denominator"}}
          ]
      ];
    interestingData = AssociationThread[{"numerator", "denominator"} 
      -> Table[<|"very-well-poised-basic-hypergeometric-cases" -> Cases[listData[
      term]["list"], _?VeryWellPoisedBasicHypergeometricFunctionQ], "fraction-power-cases"
       -> Cases[listData[term]["list"], (_?FractionQ) ^ power_], "sums" -> 
      Cases[listData[term]["list"], (Sum | Inactive[Sum])[summand:___, {variableOfSummation_,
       lowerBound_, upperBound_}]]|>, {term, {"numerator", "denominator"}}]
      ];
    interestingData["numerator"] = Join[interestingData["numerator"],
       <|"q-powers" -> Cases[listData["numerator"]["list"], (_ ? (Function[
      {symbol}, Quiet[StringMatchQ[Quiet[FullSymbolName[symbol], General::strse
      ], "*`q"], StringMatchQ::strse], {}])) ^ _], "integrals" -> Cases[listData[
      "numerator"]["list"], (Inactive[Integrate] | Integrate)[integrand_, {
      variableOfIntegration_, lowerBound_, upperBound_}]], "products" -> Cases[
      listData["numerator"]["list"], (Inactive[Product] | Product)[factor_,
       {variable_, lowerBound_, upperBound_}]], "derivatives" -> Cases[listData[
      "numerator"]["list"], (Inactive[D] | D)[_ .., _ | {_, _} | {{_, _}..}
      ]]|>]
 (*I'm just adding q-powers to the numerator.That's why I don't use \
  
  
Table here.*);
    organizedData = AssociationThread[{"numerator", "denominator"} ->
       Table[<|"notinterestingdata" -> Complement[listData[term]["list"], Catenate[
      Values[interestingData[term]]]]|>, {term, {"numerator", "denominator"
      }}]];
    moreData = AssociationThread[{"numerator", "denominator"} -> Table[
      <|"notinterestingdataProduct" -> ListToNonCommutativeMultiply[organizedData[
      term]["notinterestingdata"]]|>, {term, {"numerator", "denominator"}}]
      ];
    postData(*this goes on the right hand side of the fraction*)= AssociationThread[
      {"numerator", "denominator"} -> Table[<|"postData" -> Catenate[Table[
      interestingData[term][value], {value, {"derivatives", "sums", "integrals",
       "products", "very-well-poised-basic-hypergeometric-cases"}}]]|>, {term,
       {"numerator", "denominator"}}]];
    postDataProduct = AssociationThread[{"numerator", "denominator"} 
      -> Table[<|"postDataProduct" -> ListToNonCommutativeMultiply[postData[
      term]["postData"]]|>, {term, {"numerator", "denominator"}}]];
    preData(*this goes on the left hand side of the fraction*)= AssociationThread[
      {"numerator", "denominator"} -> Table[<|"preData" -> Catenate[Table[interestingData[
      term][value], {value, {"fraction-power-cases"}}]]|>, {term, {"numerator",
       "denominator"}}]];
 (*I'm just adding q-powers to the numerator.That's why I don't use \
  
  
Table here.*)
    preData["numerator"]["preData"] = Join[preData["numerator"]["preData"
      ], interestingData["numerator"]["q-powers"]];
    preDataProduct = AssociationThread[{"numerator", "denominator"} ->
       Table[<|"preDataProduct" -> ListToNonCommutativeMultiply[preData[term
      ]["preData"]]|>, {term, {"numerator", "denominator"}}]];
    combinedData = AssociationThread[{"numerator", "denominator"} -> 
      Table[Join @@ Join[Table[list[term], {list, {basicData, listData, interestingData,
       organizedData, moreData, postData, postDataProduct, preData, preDataProduct
      }}]], {term, {"numerator", "denominator"}}]];
    smallerFractionData =
      <|
        "smaller-fraction" ->
          Divide @@               (*Table[combinedData[term][
"notinterestingdataProduct"],{term,{"numerator",
"denominator"}}]*) {combinedData["numerator"]["notinterestingdataProduct"
  ], basicData["denominator"]["value"]}
      |>;
    totalProductList = <|"totalproductlist" -> {preDataProduct["numerator"
      ]["preDataProduct"], smallerFractionData["smaller-fraction"], postDataProduct[
      "numerator"]["postDataProduct"]}|>;
    deletedCasesData = <|"deletedCasesData" -> DeleteCases[totalProductList[
      "totalproductlist"], 1]|>;
    totalProductProduct = <|"totalProductProduct" -> ListToNonCommutativeMultiply[
      deletedCasesData["deletedCasesData"]]|>;
 (*allData=<|"smaller-fraction-data"->smallerFractionData,"combined-  \
  
  

  
  
  
  
data"->combinedData,"totalProductList"->totalProductList,\
"totalProductProduct"->totalProductProduct,"deletedCasesData"->\
deletedCasesData|>;
 allData*)
    Join[combinedData, smallerFractionData, totalProductList, totalProductProduct,
       deletedCasesData]
  (*allData["totalProductProduct"]["totalProductProduct"]*)]

FractionData[x_, property_] :=
  FractionData[x][property]

FractionData[x_, properties : _?VectorQ] :=
  FractionData[x][#]& /@ properties

FractionData[args___] :=
  Null /; CheckArguments[FractionData[args], 1]

End[]; (* End `Private` *)

EndPackage[];
