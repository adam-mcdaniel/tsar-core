
mod core::string;


core::string::fmt = @format;

fn core::string::concat(a, b) => core::string::format(a) + core::string::format(b);
