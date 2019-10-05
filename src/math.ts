


mod core::math;

core::math::PI = 3.141592653589;


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
	angle = angle % (2*core::math::PI);
	angle
	- (core::math::pow(angle, 3)/core::math::factorial(3))
	+ (core::math::pow(angle, 5)/core::math::factorial(5))
        - (core::math::pow(angle, 7)/core::math::factorial(7))
	+ (core::math::pow(angle, 9)/core::math::factorial(9))
	- (core::math::pow(angle, 11)/core::math::factorial(11))
	+ (core::math::pow(angle, 13)/core::math::factorial(13))
        - (core::math::pow(angle, 15)/core::math::factorial(15))
        + (core::math::pow(angle, 17)/core::math::factorial(17))
        - (core::math::pow(angle, 19)/core::math::factorial(19))
}



fn core::math::cos(angle) {
        angle = angle % (2*core::math::PI);
        1
        - (core::math::pow(angle, 2)/core::math::factorial(2))
        + (core::math::pow(angle, 4)/core::math::factorial(4))
        - (core::math::pow(angle, 6)/core::math::factorial(6))
	+ (core::math::pow(angle, 8)/core::math::factorial(8))
	- (core::math::pow(angle, 10)/core::math::factorial(10))
	+ (core::math::pow(angle, 12)/core::math::factorial(12))
        - (core::math::pow(angle, 14)/core::math::factorial(14))
        + (core::math::pow(angle, 16)/core::math::factorial(16))
        - (core::math::pow(angle, 18)/core::math::factorial(18))
}


fn core::math::tan(angle) => core::math::sin(angle)/core::math::cos(angle);
