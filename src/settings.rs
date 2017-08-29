
// title
//     Hello, world!
// dimensions
//     1024              # width
//     768               # height
// vsync
//     true

use error::*;

pub struct Settings {
    pub title: String,
    pub dimensions: (u32, u32),
    pub vsync: bool,
}

pub fn open(filename: &str) -> Result<(), ()> {
    match ::nccl::parse_file(filename) {
        Ok(pair) => {
            Ok(())
        },

        Err(errors) => {
            for err in errors {
                println!("{}", err);
            }

            //Err(AsteroidError::new(AsteroidErrorKind::InvalidSettingsFormat, "Could not parse settings file."))
            Err(())
        },
    }
}

