

mod core::lambda;

fn core::lambda::Print(val) {
	print(val); val
}

fn core::lambda::Println(val) {
	println(val); val
}

fn core::lambda::True(a) => |b| {a};
fn core::lambda::False(a) => |b| {b};

fn core::lambda::And(a) => |b| { a(b)(a) };
fn core::lambda::Or(a) => |b| { a(a)(b) };
fn core::lambda::Not(a) {
	a(core::lambda::False)
	 (core::lambda::True)
}
fn core::lambda::If(c) => |a| { |b| { c(a)(b) } };


fn core::lambda::Pair(a) {
	|b| { |z| { z(a)(b) } }
}

core::lambda::Head = core::lambda::True;
core::lambda::Tail = core::lambda::False;



fn core::lambda::Numeral(n) {
	|f| { |x| {
		result = x; 
		for _, __ in range(0, n) {
			result = f(result);
		}
		result
	} }
}

fn core::lambda::Succ(n) {
	|f| { |x| { f(n(f)(x)) } }
}

fn core::lambda::Pred(n) {
        |f| { |x| { n(|g| { |h| { h(g(f)) } })(|u| {x})(|u| {u}) } }
}

