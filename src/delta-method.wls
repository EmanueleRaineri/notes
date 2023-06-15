#!/usr/bin/env wolframscript

	       (*D[ArcSin[x],x]*)


	       (*Simplify[1-(2m-1)^2]*)


n = 30;
simvar=Table[
	y = RandomVariate[BinomialDistribution[n,p],10000];
	z = ArcSin[2y/n-1.0];
	Variance[z],
	{p,0.1,0.9,0.1}]


deltavar=Table[
	1.0/n,
	{p,0.1,0.9,0.1}]

exvar= Table[
	exmean = Apply[Plus,Table[ArcSin[2i/n-1.0]*PDF[BinomialDistribution[n,p],i],{i,0,n}]];
	Apply[Plus,Table[(ArcSin[2i/n-1.0]-exmean)^2*PDF[BinomialDistribution[n,p],i],{i,0,n}]]
       ,{p,0.1,0.9,0.1}]


pdeltavar = Transpose[{Table[p,{p,0.1,0.9,0.1}], deltavar}]
pexvar =  Transpose[{Table[p,{p,0.1,0.9,0.1}], exvar}]

g = ListPlot[{pdeltavar, pexvar},
	     PlotLegends -> {"Delta", "Exact"},
	     PlotStyle -> PointSize[Large],
	     Joined -> True, Mesh-> All, PlotRange->All]
Export["delta-method.png",g]
Run["export LD_LIBRARY_PATH=''; display delta-method.png"]


