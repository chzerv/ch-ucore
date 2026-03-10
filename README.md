Custom [ucore](https://github.com/ublue-os/ucore) image which:

- Sets up RPMFusion repositories
- Installs multimedia related packages like `intel-media-driver`, `libva-utils` `gstreamer` and the full `ffmpeg` instead of `ffmpeg-free`
- Installs `qemu-guest-agent`, `nvtop` and `btop`

To rebase into this image, run the following command:

```bash
# From an existing ucore installation
bootc switch ghcr.io/chzerv/ch-ucore:latest

# From an existing CoreOS installation
rpm-ostree rebase ostree-unverified-registry:ghcr.io/chzerv/ch-ucore:latest
```
