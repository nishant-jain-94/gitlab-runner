# Gitlab Runner

## Instructions to run Gitlab-Runner

```
# Register the gitlab-runner
docker run -it --volume /path/to/config.toml --name gitlab-runner gitlab-runner

# Run the gitlab-runner
docker run -itd --volume /path/to/config.toml --name gitlab-runner-1 gitlab-runner run
```
