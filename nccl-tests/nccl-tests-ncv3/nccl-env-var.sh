export CUDA_DEVICE_ORDER=PCI_BUS_ID
export NCCL_IB_PCI_RELAXED_ORDERING=1
export NCCL_SOCKET_IFNAME=eth0
export NCCL_TOPO_FILE=/opt/microsoft/ndv4-topo.xml
export OMPI_MCA_coll_hcoll_enable=0
export UCX_IB_PCI_RELAXED_ORDERING=on
export UCX_NET_DEVICES=eth0
