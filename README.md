# README

## Docker
To build the Docker image, run the command

```
docker build -t icaoberg/meme-suite .
```

For convenience, the Docker image can be found in [Dockerhub](https://hub.docker.com/r/icaoberg/meme-suite/builds/).

## Singularity
<aside class="notice">
You need sudo access to build the Singularity image.
</aside>

To create the Singularity container, run the command

```
singularity image.create -s 5000 ubuntu17.10-meme_4.11.1.img
sudo singularity build ubuntu17.10-meme_4.11.1.img Singularity
```

To connect to the Singularity image, run the command

```
singularity shell ubuntu17.10-meme_4.11.1.img
```

## Acknowledgement

The Dockerfile in this repository is based on [forrestzhang](https://github.com/forrestzhang) [Dockerfile](https://github.com/forrestzhang/Docker/tree/master/meme).
