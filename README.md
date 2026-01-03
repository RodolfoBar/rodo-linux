# Rodo-Linux

This is my setup of arch linux as I like it. I will adjust here whenever something comes up

---

## Usage

Install arch linux using archinstall. You can choose not do a server install where you get nothing but a tty, however, I usually chose to install i3-wm from here.

Download [install.sh](install.sh) in your `HOME` directory and run it using `./install.sh`.

You can also choose to run the following command to do this in one step. **IMPORTANT: You should only run scripts that you absolutely trust on your system.**

> [!WARNING]
> You should only run scripts that you absolutely trust on your system.

`wget https://raw.githubusercontent.com/RodolfoBar/rodo-linux/refs/heads/main/install.sh && chmod +x install.sh && ./install.sh`

This will open a menu as follows:

```
What would you like to install?


1. Just Essentials
2. Dotfiles
3. Development Environment
4. Flatpak
5. Doom Emacs
6. Printers
7. i3 + Xorg
8. Desktop Apps
9. Bluetooth
10. Password Manager
11. Partition Manager
12. Steam
13. All


enter q to quit
```

Input a number and press enter. This will run the corresponding installation script.

## Things to take note for Laptops

If you wanna use a these scripts for laptops you may need to install the following things to make sure that you are well setup:

1. Screen Brightness control
    - `brightnessctl` is a good option
2. Setup Natural Scrolling and other touch pad settings
    - Take a look at [this](assets/30-touchpad.conf) libinput config
    - Take a look at the [libinput](https://wiki.archlinux.org/title/Libinput) wiki page or the [touchpad synaptics](https://wiki.archlinux.org/title/Touchpad_Synaptics) one
    > [!IMPORTANT]
    > touchpad synaptics page says to use libinput. So look at the config there. I am only including for legacy reasons
3. You may need some battery control or visualization stuff in your polybar. Take a look [here](https://github.com/polybar/polybar/wiki/Module:-battery)

---

## Things To Do

- [ ] Add: Proper detection of GPU for drivers
- [ ] Fix: Steam installer, remove nvidia utils dependencies
