# gh-actions-docker
Sample project demonstrating how to build a docker image and publish to docker hub using github actions.

After building and publishing the docker image, run the container:

```bash
$ docker run -p 8080:8080 <DOCKER_USERNAME>/gh-actions-docker:latest
```

Open a web browser at http://localhost:8080/

You should see a Hello World!