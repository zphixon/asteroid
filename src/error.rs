
use std::fmt;
use std::error::Error;

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
    InvalidSettingsFormat,
}

impl AsteroidError {
    pub fn new(kind: AsteroidErrorKind, msg: &str) -> Self {
        AsteroidError {
            kind: kind,
            msg: msg.to_owned(),
        }
    }
}

impl fmt::Display for AsteroidError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "An error has ocurred: {:?} {}", self.kind, self.msg)
    }
}

impl Error for AsteroidError {
    fn description(&self) -> &str {
        &self.msg
    }
}

