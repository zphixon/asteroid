#!/bin/sh
cargo build --release &&
cp target/release/asteroid.exe dftwg.exe &&
7z u dftwg.zip dftwg.exe config.nccl SDL2.dll &&
rm dftwg.exe
