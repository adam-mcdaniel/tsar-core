mod core::math;

core::math::PI = 3.141592653589;
core::math::TAU = 2 * core::math::PI;


fn core::math::factorial(n) {
	core::list::product(range(1, n+1))
}


fn core::math::pow(n, exponent) {
	result = n;

	for _, __ in range(0, exponent-1) {
		result = result * n;
	}

	result
}


fn core::math::sin(angle) {
	pow = core::math::pow;
	factorial = core::math::factorial;

	angle = angle % (2*core::math::PI);
	angle
	- (pow(angle, 3)/factorial(3))
	+ (pow(angle, 5)/factorial(5))
        - (pow(angle, 7)/factorial(7))
	+ (pow(angle, 9)/factorial(9))
	- (pow(angle, 11)/factorial(11))
	+ (pow(angle, 13)/factorial(13))
        - (pow(angle, 15)/factorial(15))
        + (pow(angle, 17)/factorial(17))
        - (pow(angle, 19)/factorial(19))
}



fn core::math::cos(angle) {
        pow = core::math::pow;
        factorial = core::math::factorial;

        angle = angle % (2*core::math::PI);
        1
        - (pow(angle, 2)/factorial(2))
        + (pow(angle, 4)/factorial(4))
        - (pow(angle, 6)/factorial(6))
	+ (pow(angle, 8)/factorial(8))
	- (pow(angle, 10)/factorial(10))
	+ (pow(angle, 12)/factorial(12))
        - (pow(angle, 14)/factorial(14))
        + (pow(angle, 16)/factorial(16))
        - (pow(angle, 18)/factorial(18))
}


fn core::math::tan(angle) => core::math::sin(angle)/core::math::cos(angle);


fn core::math::degrees_to_radians(degrees) => (degrees / 360) * core::math::TAU;
fn core::math::radians_to_degrees(radians) => (radians / core::math::TAU) * 360;
