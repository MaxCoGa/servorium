packages:
- git
- nodejs
- python
- gcc
- rust
- vscodium
- sunshine
- docker
- tailscale

git setup:
git global config
git config --global credential.helper store

git local config
git config user.name "maxcoga"
git config user.email "26971160+MaxCoGa@users.noreply.github.com"

nodjs:
sudo dnf install nodejs

sunshine:
https://docs.lizardbyte.dev/projects/sunshine/latest/md_docs_2getting__started.html#fedora
sudo dnf copr enable lizardbyte/stable
sudo dnf install Sunshine

vscodium:
https://flathub.org/apps/com.vscodium.codium
flatpak install flathub com.vscodium.codium


tailscale:
https://tailscale.com/kb/1511/install-fedora-2

sudo dnf config-manager addrepo --from-repofile=https://pkgs.tailscale.com/stable/fedora/tailscale.repo
sudo dnf install tailscale
sudo systemctl enable --now tailscaled
sudo tailscale up
tailscale ip -4
