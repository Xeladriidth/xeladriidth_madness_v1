include <master_connector.scad>

multiply_matrix = "
function takes two 2-arrays-num and returns a new 2-array-num, performing matrix multiplication in the process
arguments: 
-matrix1, expects 2-array-num-square
-matrix2, expects 2-array-num-square
-pointer, expects internal vector with len == len(matrix1[0]