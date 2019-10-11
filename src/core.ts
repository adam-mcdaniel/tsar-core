mod core;

new = @new;

add = @add;
sub = @sub;
mul = @mul;
div = @div;
rem = @rem;
not = @not;
eq  = @eq;
fn neq(a, b) => not(eq(a, b));

list  = @list;
len   = @len;
push  = @push;
pop   = @pop;
range = @range;
reverse = @reverse;
map     = @map;
filter  = @filter;
reduce  = @reduce;


true = 1;
false = 0;
