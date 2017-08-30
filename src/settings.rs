
// window
//     fullscreen
//         true
//     title
//         Hello, world!
//     dimensions
//         490               # width
//         700               # height
// graphics
//     shaders
//         name
//             path
//         name2
//             path

use error::*;

pub struct Settings {
    pub title: String,
    pub width: u32,
    pub height: u32,
    pub vsync: bool,
    pub fullscreen: bool,
}

pub fn open(filename: &str) -> Result<Settings, ()> {
    match ::nccl::parse_file(filename) {
        Ok(pair) => {
            Ok(Settings {
                title: pair["window"]["title"].value_or("untitled".into()),
                width: pair["window"]["width"].keys_as_or::<i64>(vec![600])[0] as u32,
                height: pair["window"]["height"].keys_as_or::<i64>(vec![900])[0] as u32,
                vsync: false, // does not seem to work using glium
                fullscreen: pair["window"]["fullscreen"].value_as::<bool>().unwrap_or(false),
            })
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

