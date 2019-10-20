

mod core::list;


fn core::list::sum(list) => reduce(list, add, 0);
fn core::list::product(list) => reduce(list, mul, 1);

fn core::list::join(list) {
	result = "";
	
	for _, elem in list {
		result = result + std::string::fmt(elem);
	}

	result
}
