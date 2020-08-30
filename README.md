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
    ./ycm.sh
    ```
    If you need more language supported, please refer to plugin's homepage.
6. Enjoy!

## Extras
### Tmux

1. Install `tmux`
2. Install plugins
    ```
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    cp .tmux.conf ~/
    ```
3. Enable zsh plugins and vim plugins for tmux (DIY).
### Gotty for web ssh
```
pkg install -y openssh gotty
cp extras/.gotty ~/
cp extras/gotty.sh ~/
#to run: ~/gotty.sh
```
### Vnc for termux
1. Install dependencies
    ```
    pkg install -y x11-repo
    pkg install -y tigervnc
    vncserver -localhost # press 'n'
    ```
2. Add `export DISPLAY=":1"` to `~/.custom.zsh`
3. Install GUI app
    ```
    pkg install -y xfce4
    pkg install -y xfce4-terminal geany aterm
    ```
4. VNC server startup configuration (~/.vnc/xstartup) should contain only
    ```
    #!/data/data/com.termux/files/usr/bin/sh
    xfce4-session &
    ```
5. Add alias to `~/.custom.zsh`
    ```
    alias vncstart="vncserver :1"
    alias vncstop="vncserver -kill :1"
    ```
