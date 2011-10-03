## Set colour term if in gnome-terminal
if [[ "$COLORTERM" -eq "gnome-terminal" ]]; then
  export TERM='xterm-256color'
fi

## Source all the config files.
for config_file ($HOME/.zsh/lib/*.zsh)
  source $config_file

config_files=(
  $HOME/.zsh/vendor/syntax-highlighting/zsh-syntax-highlighting.zsh
  $HOME/.zsh/lib/pc-specific/$(hostname).zsh
  $HOME/.zsh/lib/os-specific/$(uname).zsh
  $HOME/.rvm/scripts/rvm
)

for config_file in $config_files
  [[ -s $config_file ]] && source $config_file