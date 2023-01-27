if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH /home/ethan/.local/bin $PATH
set PATH /home/ethan/.cargo/bin $PATH

abbr -a ls exa
abbr -a ll exa -l
abbr -a lla exa -la
abbr -a find fd
# abbr -a proxy export ALL_PROXY="http://:7890"
abbr -a proxy sh ~/dotfiles/proxy.sh
