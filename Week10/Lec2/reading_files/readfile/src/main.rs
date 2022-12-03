use std::{
    fs::File,
    io::{Error, Read},
};

// main is fallible, it can fail because of an I/O error
fn main() -> Result<(), Error> {
    // `File::open()` *also* returns a `Result<File, Error>`.
    // The `?` sigil means: if it returns an error, then we
    // should also return that errror. If it returns a result,
    // then assign it to file and carry on
    let mut file = File::open("/etc/hosts")?;

    // create an empty string, have a mutable binding to it,
    // so we can take a mutable reference to it later
    let mut text = String::new();

    // call `Read::read_to_string` on the file, pass it
    // a mutable reference to our destination string.
    // The signature for `read_to_string` takes `&mut self`,
    // so this line actually takes a mutable reference to file too.
    file.read_to_string(&mut text)?;

    println!("{}", text);

    Ok(())
}
