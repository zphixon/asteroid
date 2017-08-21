
use std::fmt;

#[derive(Debug, PartialEq)]
pub enum AsteroidResult {
    Ok,
    Err(AsteroidError),
}

#[derive(Debug, PartialEq)]
pub struct AsteroidError {
    kind: AsteroidErrorKind,
    msg: String,
}

#[derive(Debug, PartialEq)]
pub enum AsteroidErrorKind {
    Exit,
}

impl AsteroidResult {
    pub fn assert_exit(&self) {
        match self {
            &AsteroidResult::Err(ref r) => {
                if r.kind != AsteroidErrorKind::Exit {
                    panic!("error: {}", r)
                }
            },
            &AsteroidResult::Ok => {},
        }
    }
}

impl AsteroidError {
    pub fn new(kind: AsteroidErrorKind, msg: &str) -> AsteroidResult {
        AsteroidResult::Err(AsteroidError {
            kind: kind,
            msg: msg.to_owned(),
        })
    }

    pub fn exit() -> AsteroidResult {
        AsteroidError::new(AsteroidErrorKind::Exit, "The game exited normally.")
    }

    pub fn ok() -> AsteroidResult {
        AsteroidResult::Ok
    }
}

impl fmt::Display for AsteroidError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self.kind {
            AsteroidErrorKind::Exit => Ok(()),
            _ => {
                write!(f, "An error has ocurred: {}", self.msg)
            }
        }
    }
}

