FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

LABEL \
    maintainer="Wing Chau <wing@devtography.com>" \
    version="1.0" \
    description="An Ubuntu 18.04 Docker image with CUDA10 & Python 3.6" \
    python-version="3.6.x" \
    cuda-version="10.1" \
    license="Apache License 2.0"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt-mark hold cuda-command-line-tools-10-1 cuda-compat-10-1 \
    cuda-compiler-10-1 cuda-cudart-10-1 cuda-cudart-dev-10-1 cuda-cufft-10-1 \
    cuda-cufft-dev-10-1 cuda-cuobjdump-10-1 cuda-cupti-10-1 cuda-curand-10-1 \
    cuda-curand-dev-10-1 cuda-cusolver-10-1 cuda-cusolver-dev-10-1 \
    cuda-cusparse-10-1 cuda-cusparse-dev-10-1 cuda-driver-dev-10-1 \
    cuda-gdb-10-1 cuda-gpu-library-advisor-10-1 cuda-libraries-10-1 \
    cuda-libraries-dev-10-1 cuda-license-10-1 cuda-memcheck-10-1 \
    cuda-minimal-build-10-1 cuda-misc-headers-10-1 cuda-npp-10-1 \
    cuda-npp-dev-10-1 cuda-nvcc-10-1 cuda-nvdisasm-10-1 cuda-nvgraph-10-1 \
    cuda-nvgraph-dev-10-1 cuda-nvjpeg-10-1 cuda-nvjpeg-dev-10-1 \
    cuda-nvml-dev-10-1 cuda-nvprof-10-1 cuda-nvprune-10-1 cuda-nvrtc-10-1 \
    cuda-nvrtc-dev-10-1 cuda-nvtx-10-1 cuda-sanitizer-api-10-1 libcudnn7 \
    libcudnn7-dev libnccl-dev libnccl2 \
    && apt upgrade -y \
    && apt clean

# Install Python3.8 && pip
RUN apt update \
    && apt install -y --no-install-recommends python3 python3-pip \
    && ln -sf python3 /usr/bin/python \
    && ln -sf pip3 /usr/bin/pip \
    && pip install --upgrade pip \
    && pip install wheel setuptools

CMD ["bash"]
