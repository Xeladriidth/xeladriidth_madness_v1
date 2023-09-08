//this file contains default definitions for several functions that need strict formalisms to function, which a) need to be structured and b) may not at all times be structured

list_update_default = ["aim","projectile"];

//echo(list_update_default);

math_matrix_default = ["augmenter","potencies"];
//using arrays to define equation systems necessitates storing variables. this formalism defines which data point to use for which slot in a polynomic equation//unfinished

/*@formats

used data formats:

-string
-num
-list
-array: nested lists. arrays are basically lists within lists etc that are treated as consistent data with hierarchical sorting; usual parameters are the span(number of contained list items) and the squareness. an array is square if all lists and superlists have consistent lengths

example:
[
[2,2],
[2,2}
] // this array is square , its size is [1,1]

.a squara array can be circumferenced by its "shape" property; this "shape" consists of a numlist that defines the length of each sublist
-table: list of 2lists containing arbitrary objects; functions as a lookup or hash table

-monolith:
on first look, a monolith is a 2list, one with....stuff, another with a descriptor; the goal of the monolith format is to make all present data within a program accessible to said program which includes complete turing modelling by a register submachine;
.has the added benefit of order ignorance; elements in a monolith can be unordered, as all handles to order the data are provided

example f

*/