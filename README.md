# python-cuda-docker

### Docker image for Python with CUDA

#### You can find the Docker Hub repo here: https://hub.docker.com/r/devtography/python-cuda

### Usage
In order to use this image, [nvidia-docker] is needed to be installed on the 
host machine.

#### Pull the Docker image from Docker Hub:
```sh
docker pull devtography/python-cuda
```

#### Create a container from the image and run it:
```sh
docker run --gpus all -it devtography/python-cuda
```

## Contributions
Contributions via pull requests are welcome and encouraged :)

## License
python-cuda-docker is licensed under the [Apache License, Version 2.0](LICENSE.md).

[nvidia-docker]: https://github.com/NVIDIA/nvidia-docker
