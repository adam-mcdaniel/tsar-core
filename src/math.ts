


mod core::math;

core::math::PI = 3.141592653589;


fn core::math::factorial(n) {
	core::list::product(range(1, n))
}


fn core::math::pow(n, exponent) {
	result = n;

	for _, __ in range(0, exponent) {
		result = result * n;
	}

	result
}


fn core::math::sin(angle) {
	angle = angle % (2*core::math::PI);
	angle
	- (pow(angle, 3)/factorial(3))
	+ (pow(angle, 5)/factorial(5))
        - (pow(angle, 7)/factorial(7))
}



fn core::math::cos(angle) {
        angle = angle % (2*core::math::PI);
        1
        - (pow(angle, 2)/factorial(2))
        + (pow(angle, 4)/factorial(4))
        - (pow(angle, 6)/factorial(6))
}


fn core::math::tan(angle) => sin(angle)/cos(angle);
