


core = dict()





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
fn core["math"]["radians_to_degrees"](radians) { mul(div(radians, core["math"]["TAU"]), 360); }PI = core["math"]["PI"];
TAU = core["math"]["TAU"];
degrees_to_radians = core["math"]["degrees_to_radians"];
radians_to_degrees = core["math"]["radians_to_degrees"];






(println)(div(PI, 3));
(println)((degrees_to_radians)((radians_to_degrees)(div(TAU, 6))));