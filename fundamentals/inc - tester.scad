include <inc.scad>

/*test across entire functional spectrum of inc function:

-test across data types

-test across input types
*/

echo(inc(1));

echo(inc(1,2));

echo(inc(1,-2));

echo(inc([1,2]));

echo(inc([-1,2],-2));
//unfinished
