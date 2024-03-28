#
# ~/.config/zsh/.zprofile
#

export GIT_CONFIG_GLOBAL=~/Personal/.gitconfig
export CARGO_HOME=$HOME/Personal/.cargo
export RUSTUP_HOME=$HOME/Personal/.rustup
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

export PATH=~/.local/bin:$PATH

. "$HOME/Personal/.cargo/env"
