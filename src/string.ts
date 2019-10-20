
mod core::string;


core::string::fmt = @format;

fn core::string::concat(a, b) => core::string::fmt(a) + core::string::fmt(b);
