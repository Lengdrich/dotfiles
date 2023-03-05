if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.local/bin $PATH
set PATH $HOME/.local/share/nvim/mason/bin/ $PATH
set PATH $HOME/.local/bin/lua-language-server $PATH
set PATH $HOME/.local/bin/lua-language-server/bin/ $PATH
set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.npm-global/bin $PATH
set -x RUSTUP_DIST_SERVER "https://rsproxy.cn"
set -x RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"
set -x rime_dir "$HOME/.config/fcitx/rime"
set -x STARSHIP_CONFIG "$HOME/.config/starship/fish.toml"

abbr -a ls exa
abbr -a ll exa -l
abbr -a lla exa -la
abbr -a find fd
abbr -a cat bat
# abbr -a proxy export ALL_PROXY="http://:7890"
abbr -a proxy export ALL_PROXY="http://192.168.1.6:7890"
abbr -a proxy1 sh ~/dotfiles/proxy1.sh
abbr -a proxy2 sh ~/dotfiles/proxy2.sh
abbr -a proxy3 sh ~/dotfiles/proxy3.sh

zoxide init fish | source
starship init fish | source
