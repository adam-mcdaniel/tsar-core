


core = dict()


new = @new;
add = @add;
sub = @sub;
mul = @mul;
div = @div;
rem = @rem;
not = @not;
eq = @eq;
fn neq(a,b) { (not)((eq)(a,b)); }
list = @list;
len = @len;
push = @push;
pop = @pop;
range = @range;
reverse = @reverse;
map = @map;
filter = @filter;
reduce = @reduce;
true = 1;
false = 0;


core["list"] = dict()


fn core["list"]["sum"](list) { (reduce)(list,add,0); }
fn core["list"]["product"](list) { (reduce)(list,mul,1); }
fn core["list"]["join"](list) { result = "";
for _, elem in (list) { result = add(result, (format)(elem)); }
result; }


core["math"] = dict()


core["math"]["PI"] = 3.141592653589;
core["math"]["TAU"] = mul(2, core["math"]["PI"]);
fn core["math"]["factorial"](n) { (core["list"]["product"])((range)(1,add(n, 1))); }
fn core["math"]["pow"](n,exponent) { result = n;
for _, __ in ((range)(0,sub(exponent, 1))) { result = mul(result, n); }
result; }
fn core["math"]["sin"](angle) { pow = core["math"]["pow"];
factorial = core["math"]["factorial"];
angle = rem(angle, mul(2, core["math"]["PI"]));
sub(add(sub(add(sub(add(sub(add(sub(angle, div((pow)(angle,3), (factorial)(3))), div((pow)(angle,5), (factorial)(5))), div((pow)(angle,7), (factorial)(7))), div((pow)(angle,9), (factorial)(9))), div((pow)(angle,11), (factorial)(11))), div((pow)(angle,13), (factorial)(13))), div((pow)(angle,15), (factorial)(15))), div((pow)(angle,17), (factorial)(17))), div((pow)(angle,19), (factorial)(19))); }
fn core["math"]["cos"](angle) { pow = core["math"]["pow"];
factorial = core["math"]["factorial"];
angle = rem(angle, mul(2, core["math"]["PI"]));
sub(add(sub(add(sub(add(sub(add(sub(1, div((pow)(angle,2), (factorial)(2))), div((pow)(angle,4), (factorial)(4))), div((pow)(angle,6), (factorial)(6))), div((pow)(angle,8), (factorial)(8))), div((pow)(angle,10), (factorial)(10))), div((pow)(angle,12), (factorial)(12))), div((pow)(angle,14), (factorial)(14))), div((pow)(angle,16), (factorial)(16))), div((pow)(angle,18), (factorial)(18))); }
fn core["math"]["tan"](angle) { div((core["math"]["sin"])(angle), (core["math"]["cos"])(angle)); }
fn core["math"]["degrees_to_radians"](degrees) { mul(div(degrees, 360), core["math"]["TAU"]); }
fn core["math"]["radians_to_degrees"](radians) { mul(div(radians, core["math"]["TAU"]), 360); }


core["bool"] = dict()


core["bool"]["True"] = 1;
core["bool"]["False"] = 0;


core["lambda"] = dict()


fn core["lambda"]["True"](a) { fn(b) { a; }; }
fn core["lambda"]["False"](a) { fn(b) { b; }; }
fn core["lambda"]["And"](a) { fn(b) { ((a)(b))(a); }; }
fn core["lambda"]["Or"](a) { fn(b) { ((a)(a))(b); }; }
fn core["lambda"]["Not"](a) { ((a)(core["lambda"]["False"]))(core["lambda"]["True"]); }
fn core["lambda"]["If"](c) { fn(a) { fn(b) { ((c)(a))(b); }; }; }
fn core["lambda"]["Pair"](a) { fn(b) { fn(z) { ((z)(a))(b); }; }; }
fn core["lambda"]["Head"](list) { (list)(core["lambda"]["True"]); }
fn core["lambda"]["Tail"](list) { (list)(core["lambda"]["False"]); }
fn core["lambda"]["Numeral"](n) { fn(f) { fn(x) { result = x;
for _, __ in ((range)(0,n)) { result = (f)(result); }
result; }; }; }
fn core["lambda"]["Succ"](n) { fn(f) { fn(x) { (f)(((n)(f))(x)); }; }; }
fn core["lambda"]["Pred"](n) { fn(f) { fn(x) { (((n)(fn(g) { fn(h) { (h)((g)(f)); }; }))(fn(u) { x; }))(fn(u) { u; }); }; }; }


core["string"] = dict()


core["string"]["fmt"] = @format;
fn core["string"]["concat"](a,b) { add((core["string"]["format"])(a), (core["string"]["format"])(b)); }





