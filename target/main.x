


core = dict()





core["list"] = dict()


fn core["list"]["sum"](list) { (reduce)(list,add,0); }
fn core["list"]["product"](list) { (reduce)(list,mul,1); }
fn core["list"]["join"](list) { result = "";
for _, elem in (list) { result = add(result, (format)(elem)); }
result; }


core["math"] = dict()


core["math"]["PI"] = 3.141592653589;
fn core["math"]["factorial"](n) { (core["list"]["product"])((range)(1,n)); }
fn core["math"]["pow"](n,exponent) { result = n;
for _, __ in ((range)(0,sub(exponent, 1))) { result = mul(result, n); }
result; }
fn core["math"]["sin"](angle) { angle = rem(angle, mul(2, core["math"]["PI"]));
sub(add(sub(angle, div((pow)(angle,3), (factorial)(3))), div((pow)(angle,5), (factorial)(5))), div((pow)(angle,7), (factorial)(7))); }
fn core["math"]["cos"](angle) { angle = rem(angle, mul(2, core["math"]["PI"]));
sub(add(sub(1, div((pow)(angle,2), (factorial)(2))), div((pow)(angle,4), (factorial)(4))), div((pow)(angle,6), (factorial)(6))); }
fn core["math"]["tan"](angle) { div((sin)(angle), (cos)(angle)); }





