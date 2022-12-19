# My-Linux-Setups
My scripts to setup dev env for Linux workspace

## Installation
1. Clone the repository
    ```
    git clone https://github.com/alfrededison/My-Linux-Setups ~/.setup
    cd ~/.setup
    ```
2. Install requirements

    2.1 Ubuntu:
    ```
    ./install-ubuntu.sh
    ```
    2.2 Termux:
    ```
    ./install-termux.sh
    ```
3. Install fonts

    4.1 Ubuntu:
    ```
    ./install-font.sh
    ```
    4.2 Termux:
    ```
    p10k configure
    # it will ask to install font, press Y to install. Then press q to quit
    ```
4. Install oh-my-zsh
    ```
    ./install-omz.sh
    ```
5. Install [common dotfiles](https://github.com/alfrededison/dotfiles).
6. Install vimrc
    ```
    ./install-vimrc.sh
    ```
    1. Install you-complete-me for vim (optional but recommended)
        ```
        ./install-vimrc-ycm.sh
        ```
    2. If you need more language supported, please refer to plugin's homepage.
7. Vnc for termux
    1. Install
        ```
        ./install-termux-vnc.sh
        ```
    2. Use vncstart to start VNC session, and vncstop to stop it.
    3. Use VNC on computer (optional)
        3.1 Connect with adb
        3.2 Forward port
        ```
        adb forward tcp:5901 tcp:5901
        ```
    4. Connect VNC to local address with port 5901
8. Enjoy!
