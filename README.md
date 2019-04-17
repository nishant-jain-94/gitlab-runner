# Gitlab Runner

## Instructions to run Gitlab-Runner

```
# Register the gitlab-runner
docker run -it --volume /path/to/config/folder:/etc/gitlab-runner jainnish94/gitlab-runner

# Run the gitlab-runner
docker run -itd --volume /var/run/docker.sock:/var/run/docker.sock --volume /path/to/config/folder:/etc/gitlab-runner --name gitlab-runner jainnish94/gitlab-runner run
```
