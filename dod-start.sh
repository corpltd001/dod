cd

apt-get update && apt-get install -y --no-install-recommends \
curl wget \
ocl-icd-libopencl1 \
clinfo pkg-config && \
rm -rf /var/lib/apt/lists/*

mkdir -p /etc/OpenCL/vendors && \
echo "libnvidia-opencl.so.1" > /etc/OpenCL/vendors/nvidia.icd

echo "/usr/local/nvidia/lib" >> /etc/ld.so.conf.d/nvidia.conf && \
echo "/usr/local/nvidia/lib64" >> /etc/ld.so.conf.d/nvidia.conf

PATH=/usr/local/nvidia/bin:${PATH}
LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

NVIDIA_VISIBLE_DEVICES=all
NVIDIA_DRIVER_CAPABILITIES=compute,utility

apt-get update

apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config clang build-essential hwloc libhwloc-dev -y


echo Done
