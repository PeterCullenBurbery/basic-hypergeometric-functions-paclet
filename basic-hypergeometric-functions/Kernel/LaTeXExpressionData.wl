(* ::Package:: *)

BeginPackage["PeterBurbery`BasicHypergeometricFunctions`"];

(* Declare your packages public symbols here. *)

PeterBurbery`BasicHypergeometricFunctions`LaTeXExpressionData;

Begin["`Private`"];

(* Define your public and private symbols here. *)


LaTeXExpressionData//ClearAll
LaTeXExpressionData::usage="LaTeXExpressionData[str] gives data for LaTeX str.";
LaTeXExpressionData[input_?StringQ]:=Module[{laTeXPreview,imageWidth,imageDimensions,imageHeight,imageResolutionList,imageResolutionSingleValue,centimetersPerPixel,pixelsPerCentimeter,margin,defaultLaTeXPDFWidth,widthNotIncludingMarginsInCentimeters,widthNotIncludingMarginsInPixels,pixelThreshold},laTeXPreview=LaTeXPreview[input];imageDimensions={imageWidth,imageHeight}=ImageDimensions[laTeXPreview];

imageResolutionList=Information[laTeXPreview,"ImageResolution"];imageResolutionSingleValue=First[Union[imageResolutionList]];centimetersPerPixel=(127/50)(*Rationalize[2.54]*)/imageResolutionSingleValue;pixelsPerCentimeter=1/centimetersPerPixel;margin=Quantity[2,"Inches"];defaultLaTeXPDFWidth=1020;widthNotIncludingMarginsInCentimeters=Quantity[defaultLaTeXPDFWidth*centimetersPerPixel,"Centimeters"]-margin;<|"quantity"->Quantity[defaultLaTeXPDFWidth*centimetersPerPixel,"Centimeters"]-margin,"width"->imageWidth|>;pixelThreshold=widthNotIncludingMarginsInPixels=pixelsPerCentimeter*QuantityMagnitude@widthNotIncludingMarginsInCentimeters;<|"latex-preview"->laTeXPreview,"imageWidth"->imageWidth,"image-height"->imageHeight,"image-dimensions"->imageDimensions,"image-resolution-list"->imageResolutionList,"image-resolution-single-value"->imageResolutionSingleValue,"centimeters-per-pixel"->centimetersPerPixel,"pixels-per-centimeter"->pixelsPerCentimeter,"margin"->margin,"default-latex-pdf-width"->defaultLaTeXPDFWidth,"width-not-including-margins-in-centimeters"->widthNotIncludingMarginsInCentimeters,"pixel-threshold"->pixelThreshold,"width-not-including-margins-in-pixels"->widthNotIncludingMarginsInPixels|>]
LaTeXExpressionData[args___]:=Null/;CheckArguments[LaTeXExpressionData[args],1]

End[]; (* End `Private` *)

EndPackage[];
