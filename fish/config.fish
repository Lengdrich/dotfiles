if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH /home/ethan/.local/bin $PATH
set PATH /home/ethan/.local/bin/lua-language-server $PATH
set PATH /home/ethan/.local/bin/lua-language-server/bin/ $PATH
set PATH /home/ethan/.cargo/bin $PATH
set PATH /home/ethan/.npm-global/bin $PATH

abbr -a ls exa
abbr -a ll exa -l
abbr -a lla exa -la
abbr -a find fd
# abbr -a proxy export ALL_PROXY="http://:7890"
abbr -a proxy export ALL_PROXY="http://192.168.1.6:7890"
abbr -a proxy1 sh ~/dotfiles/proxy1.sh
abbr -a proxy2 sh ~/dotfiles/proxy2.sh
abbr -a proxy3 sh ~/dotfiles/proxy3.sh
