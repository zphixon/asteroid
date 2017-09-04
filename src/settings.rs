
// window
//     fullscreen
//         true
//     title
//         Hello, world!
//     dimensions
//         490               # width
//         700               # height
//     exit on escape
//         true
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
    pub exit_on_escape: bool,
}

pub fn open(filename: &str) -> Result<Settings, ()> {
    match ::nccl::parse_file(filename) {
        Ok(pair) => {
            Ok(Settings {
                title: pair["window"]["title"].value_or("untitled".into()),
                width: pair["window"]["width"].keys_as_or::<u32>(vec![600])[0],
                height: pair["window"]["height"].keys_as_or::<u32>(vec![900])[0],
                vsync: pair["window"]["vsync"].value_as_or::<bool>(false),
                fullscreen: pair["window"]["fullscreen"].value_as_or::<bool>(false),
                exit_on_escape: pair["window"]["exit on escape"].value_as_or::<bool>(true),
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

