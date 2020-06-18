FROM archlinux
RUN echo test;
RUN pacman -Sy; pacman -S --noconfirm git base-devel ; \ 
pacman -S --needed --noconfirm sudo ;\
useradd builduser -m ;\
passwd -d builduser ; \
printf 'builduser ALL=(ALL) ALL\n' | tee -a /etc/sudoers ;\
sudo -u builduser bash -c 'cd ~ ;  git clone https://aur.archlinux.org/yay.git ; cd yay ; makepkg -si --noconfirm';
CMD sleep infinity
