# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/apps/conda/25.3.1/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/apps/conda/25.3.1/etc/profile.d/conda.sh" ]; then
        . "/apps/conda/25.3.1/etc/profile.d/conda.sh"
    else
        export PATH="/apps/conda/25.3.1/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias myblue="cd /blue/prabhat/tharinduo"
alias isaacsim_inst="apptainer exec instance://isaacsim bash"
alias seeq="watch -n 1 squeue -A prabhat"
alias interact_gpu="srun --partition=hpg-turin --gres=gpu:1 --mem=64gb --time=12:00:00 --pty bash -c 'ml tmux neovim conda; exec bash -i'"
alias interact_cpu="srun --mem=64gb --time=12:00:00 --pty bash -c 'ml tmux neovim conda; exec bash -i'"

export PERL5LIB=$HOME/opt/stow/lib/site_perl/5.24.1:$PERL5LIB
export FPATH="$HOME/opt/zsh/share/zsh/5.9/functions:$FPATH"
