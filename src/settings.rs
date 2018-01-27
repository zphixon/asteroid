
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

//use error::*;

pub struct SettingsBuilder {
    title: Option<String>,
    width: Option<u32>,
    height: Option<u32>,
    vsync: Option<bool>,
    fullscreen: Option<bool>,
    exit_on_escape: Option<bool>,
}

impl SettingsBuilder {
    pub fn new() -> Self {
        SettingsBuilder {
            title: None,
            width: None,
            height: None,
            vsync: None,
            fullscreen: None,
            exit_on_escape: None,
        }
    }

    pub fn title(self, title: &str) -> SettingsBuilder {
        SettingsBuilder {
            title: Some(title.to_owned()),
            ..self
        }
    }

    pub fn width(self, width: u32) -> SettingsBuilder {
        SettingsBuilder {
            width: Some(width),
            ..self
        }
    }

    pub fn height(self, height: u32) -> SettingsBuilder {
        SettingsBuilder {
            height: Some(height),
            ..self
        }
    }

    pub fn vsync(self, vsync: bool) -> SettingsBuilder {
        SettingsBuilder {
            vsync: Some(vsync),
            ..self
        }
    }

    pub fn fullscreen(self, fullscreen: bool) -> SettingsBuilder {
        SettingsBuilder {
            fullscreen: Some(fullscreen),
            ..self
        }
    }

    pub fn exit_on_escape(self, eoe: bool) -> SettingsBuilder {
        SettingsBuilder {
            exit_on_escape: Some(eoe),
            ..self
        }
    }

    pub fn build(self) -> Settings {
        Settings {
            title: self.title.unwrap_or("untitled".into()),
            width: self.width.unwrap_or(600),
            height: self.height.unwrap_or(900),
            vsync: self.vsync.unwrap_or(false),
            fullscreen: self.fullscreen.unwrap_or(false),
            exit_on_escape: self.exit_on_escape.unwrap_or(true),
        }
    }
}

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
            Ok(SettingsBuilder::new()
               .title(&pair["window"]["title"].value_or("untitled".into()))
               .width(pair["window"]["width"].keys_as_or::<u32>(vec![600])[0])
               .height(pair["window"]["height"].keys_as_or::<u32>(vec![900])[0])
               .vsync(pair["window"]["vsync"].value_as_or::<bool>(false))
               .fullscreen(pair["window"]["fullscreen"].value_as_or::<bool>(false))
               .exit_on_escape(pair["window"]["exit on escape"].value_as_or::<bool>(true))
               .build()
            )
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

