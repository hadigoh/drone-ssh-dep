# drone-ssh-dep

Drone plugin for [dep](https://github.com/golang/dep) that accepts SSH key.
Useful for running dep that requires private repository.

# Usage

```yml
pipeline:
  deps:
    image: hadigoh/drone-ssh-dep
    cmd: ensure -v -vendor-only
    secrets: [SSH_KEY]
```
