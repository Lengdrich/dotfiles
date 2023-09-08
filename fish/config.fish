if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.local/bin/ $PATH
set PATH $HOME/.local/share/nvim/mason/bin/ $PATH
set PATH $HOME/.cargo/bin/ $PATH
set PATH $HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/ $PATH
set PATH $HOME/.npm-global/bin $PATH
set PATH /usr/local/sqlite/bin/ $PATH
set PATH /usr/local/sqlite/lib/ $PATH
set PATH /opt/homebrew/bin/ $PATH

# set -x RUSTUP_DIST_SERVER "https://rsproxy.cn"
# set -x RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"
set -x rime_dir "$HOME/.config/fcitx/rime"
set -x STARSHIP_CONFIG "$HOME/.config/starship/fish.toml"

abbr -a ls exa
abbr -a ll exa -l
abbr -a lla exa -la
abbr -a find fd
abbr -a cat bat
abbr -a vim nvim
abbr -a cls clear

# abbr -a proxy '~/dotfiles/sh/proxy.sh'

# Mac环境下使用代理
abbr -a proxy 'export http_proxy=127.0.0.1:7890;export https_proxy=$http_proxy'
abbr -a proxy_off 'unset http_proxy;unset https_proxy'
# abbr -a proxy export ALL_PROXY="http://192.168.1.6:7890"
abbr -a proxy1 sh ~/dotfiles/proxy1.sh
abbr -a proxy2 sh ~/dotfiles/proxy2.sh
abbr -a proxy3 sh ~/dotfiles/proxy3.sh

zoxide init fish | source
starship init fish | source