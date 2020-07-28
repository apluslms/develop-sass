A Docker container with a `node` based `sass` command.
This is expected to be used as part of a CI/CD pipeline or local development.

# Examples

Use in `.drone.yml`:

```yaml
steps:
- name: compile sass
  image: apluslms/develop-sass
  commands:
  - sass --style=compressed assets/sass:assets/css
```

Or start a watcher process:

```bash
docker run --rm -it -u $(id -u):$(id -g) -v "`pwd`:/work:rw" -w '/work' \
    'apluslms/develop-sass' sass --watch assets/sass:assets/css --poll
```
