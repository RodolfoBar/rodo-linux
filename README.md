# Rodo-Linux

This is my setup of arch linux as I like it. I will adjust here whenever something comes up

---

## Things to take note for Laptops

If you wanna use a these scripts for laptops you may need to install the following things to make sure that you are well setup:

1. Screen Brightness control
    - `brightnessctl` is a good option
2. Setup Natural Scrolling and other touch pad settings
    - Take a look at [this libinput config](assets/libinput/30-touchpad.conf)
    - Take a look at the [libinput](https://wiki.archlinux.org/title/Libinput) wiki page or the [touchpad synaptics](https://wiki.archlinux.org/title/Touchpad_Synaptics) one
    - **IMPORTANT:** touchpad synaptics page says to use libinput. So look at the config there. I am only including for legacy reasons
3. You may need some battery control or visualization stuff in your polybar. Take a look [here](https://github.com/polybar/polybar/wiki/Module:-battery)

---

## Things To Do

- [ ] Add: Proper detection of GPU for drivers
- [ ] Fix: Steam installer, remove nvidia utils dependencies
