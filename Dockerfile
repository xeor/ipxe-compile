FROM ubuntu:19.10

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y build-essential git liblzma-dev mkisofs unzip wget coreutils isolinux \
    && git clone git://git.ipxe.org/ipxe.git

COPY ./embed.ipxe /embed.ipxe

RUN cd /ipxe/src \
    && make bin-x86_64-efi/ipxe.efi EMBED=/embed.ipxe
