FROM base/archlinux

RUN pacman -Syyu --noconfirm && pacman -S curl tcpdump wireshark-cli nmap ngrep lsof strace --noconfirm && pacman -Scc --noconfirm

CMD ["bash"]
