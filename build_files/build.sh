#!/bin/bash

set -ouex pipefail

# Install RPMFusion
dnf5 install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install Intel media driver and switch to full ffmpeg
dnf5 install -y intel-media-driver libva-utils

dnf5 install -y gstreamer1-plugin-libav \
  gstreamer1-plugins-bad-free-extras \
  gstreamer1-plugins-bad-freeworld \
  gstreamer1-plugins-ugly \
  gstreamer1-vaapi

dnf5 swap -y ffmpeg-free ffmpeg --allowerasing

# Install additional utilities
dnf5 install -y qemu-guest-agent btop nvtop cloud-utils-growpart ncdu
