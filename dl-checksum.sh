#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/coreos/container-linux-config-transpiler/releases/download

dl()
{
    local ver=$1
    local arch=$2
    local os=$3
    local dotexe=${4:-}
    local platform="${arch}-${os}"
    local file="ct-${ver}-${platform}${dotexe}"
    local url=$MIRROR/$ver/$file
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  %s:\n" $ver
    dl $ver aarch64 unknown-linux-gnu
    dl $ver x86_64 unknown-linux-gnu
    dl $ver x86_64 apple-darwin
    dl $ver x86_64 pc-windows-gnu .exe
}

dl_ver ${1:-v0.9.0}
