
# asteroid [![Build Status](https://travis-ci.org/zphixon/asteroid.svg?branch=asteroid-3d)](https://travis-ci.org/zphixon/asteroid)  [![Build status](https://ci.appveyor.com/api/projects/status/pns13jbrgn1lyhon/branch/asteroid-3d?svg=true)](https://ci.appveyor.com/project/zphixon/asteroid/branch/asteroid-3d)

Very simple 3D rendering engine with a Vulkan backend. Utilizes [vulkano]
(https://github.com/vulkano-rs/vulkano) for bindings and vulkano-win for window
creation.

## Goals

* GUI system
* Windowing
* Small renderer
* glTF/PBR support?

## Non-goals

* Physics/ECS integration - While asteroid will not be shipping integration with
  an ECS, it should still be relatively simple for an end-user to weld together,
  say, specs+nphysics3d+asteroid.
* Scene modification - Game engines like Unreal or Source provide tools for users
  to create maps. Asteroid will leave this aspect of game development up to the
  user.

## TODO

* [X] First triangle
* [ ] Mesh support
* [ ] Forward-rendering pipelines (deferred? PBR?)
* [ ] GUI system
* [ ] Test integration with ECS/physics

