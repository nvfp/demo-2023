

- finished the work -> make pull request -> submit pull request with sign `#r 1.0.0` (for release) or `#t 1.0.0b` (for testing)

- then PyCICD make pull request after changing the version number inside pyproject.toml with sign `#pycicd-r` or `#pycicd-t`

- then workflow run again to either 
    - make gh release (git tag auto included)
    - just make git tag

- publish to pypi