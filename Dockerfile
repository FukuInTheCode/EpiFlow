FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base-devel && \
    pacman -Scc --noconfirm && \
    pacman -S --noconfirm python python-pip

WORKDIR /app

COPY . /app

CMD ["echo", "prout"]


