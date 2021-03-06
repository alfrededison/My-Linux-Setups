# My-Linux-Setups
My scripts to setup dev env for Linux workspace with ZSH, vim (tmux included) for Web, Javascript, Typescript, C-lang, Python, and more...

## Installation
1. Clone the repository
    ```
    git clone https://github.com/alfrededison/My-Linux-Setups ~/.setup
    cd ~/.setup
    ```
2. Install requirements

    2.1 Ubuntu:
    ```
    ./extras/ubuntu.sh
    ```
    2.2 Termux:
    ```
    ./extras/termux.sh
    ```
3. Install dot files
    ```
    ./install.sh
    ```
    It will install Oh-my-zsh first. Type 'Y' to change default shell.
    Then type 'exit' to quit the temporary zsh session to continue script installation.
    Wait for the script to finish. Restart your terminal.
4. Install fonts

    4.1 Ubuntu:
    ```
    # just copy ttf fonts to your system font folder
    cp fonts ~/.fonts
    ```
    4.2 Termux:
    ```
    p10k configure
    # it will ask to install font, press Y to install. Then press q to quit
    ```
5. Install you-complete-me for vim (optional but recommended)
    ```
    ./extras/ycm.sh
    ```
    If you need more language supported, please refer to plugin's homepage.
6. Enjoy!

## Extras
### Tmux

1. Install `tmux`
2. Install plugins
    ```
    ./extras/tmux.sh
    ```
3. Follow script instruction to finish installation.

### Vnc for termux
1. Install
    ```
    ./extras/vnc.sh
    ```
2. Use vncstart to start VNC session, and vncstop to stop it.
3. Use VNC on computer (optional)
    3.1 Connect with adb
    3.2 Forward port
    ```
    adb forward tcp:5901 tcp:5901
    ```
4. Connect VNC to local address with port 5901

### Gotty for web ssh
```
pkg install -y openssh gotty
cp extras/gotty/.gotty ~/
cp extras/gotty/gotty.sh ~/
#to run: ~/gotty.sh
```
