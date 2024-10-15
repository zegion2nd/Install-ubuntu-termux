# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want to customize installation, please make a copy.

DISTRO_NAME="Ubuntu (22.04)"
DISTRO_COMMENT="Jammy Jellyfish (22.04) LTS."

TARBALL_STRIP_OPT=0

# URL and SHA256 for aarch64 (arm64)
TARBALL_URL['aarch64']="https://cdimage.ubuntu.com/ubuntu-base/releases/22.04.5/release/ubuntu-base-22.04.5-base-arm64.tar.gz"
TARBALL_SHA256['aarch64']="075d4abd2817a5023ab0a82f5cb314c5ec0aa64a9c0b40fd3154ca3bfdae979f"

# URL and SHA256 for armhf
TARBALL_URL['arm']="https://cdimage.ubuntu.com/ubuntu-base/releases/22.04.5/release/ubuntu-base-22.04.5-base-armhf.tar.gz"
TARBALL_SHA256['arm']="fd77cb0659326b75c08ce06b6b8649d2e13ef9a704a8e9212fec32cb97d42add"

# URL and SHA256 for x86_64
TARBALL_URL['x86_64']="https://cdimage.ubuntu.com/ubuntu-base/releases/22.04.5/release/ubuntu-base-22.04.5-base-amd64.tar.gz"
TARBALL_SHA256['x86_64']="242cd8898b33ea806ef5f13b1076ed7c76f9f989d18384452f7166692438ff1a"
