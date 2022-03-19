Python POC Boilerplate
======================

A boilerplate for quick proofs-of-concept, with:
- Development environment and shell using [nix][nix]
- Test suite and runner using [pytest](https://docs.pytest.org) + plugins
- Linting via [black](https://github.com/psf/black)
- Typing via [mypy](http://mypy-lang.org/)
- Task runner using [taskfile](https://taskfile.dev)

Requirements:
- Just [nix][nix] :tada:

Getting started:
- Run `nix-shell`.
- Run `task` to start the test runner (or check `Taskfile.yml` for other tasks).

[nix]: https://nixos.org
