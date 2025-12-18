##### Things that should run even in non-interactive shells (PATH, exports, etc)
# export PATH="$HOME/.local/bin:$PATH"

##### Stop here if shell is not interactive
[[ $- != *i* ]] && return

# ---- Persistent command history ----
HISTFILE=~/.zsh_history
HISTSIZE=10000        # Number of lines kept in memory
SAVEHIST=10000        # Number of lines saved to file

setopt APPEND_HISTORY         # Append to the history file, don't overwrite
setopt SHARE_HISTORY          # Share history across all open terminals
setopt HIST_IGNORE_DUPS       # Ignore duplicate entries
setopt HIST_IGNORE_SPACE      # Ignore commands starting with a space
setopt HIST_VERIFY            # Don't execute immediately when selecting from history

# --- Basic options (optional but nice) ---
setopt autocd           # cd just by typing the directory name
setopt correct          # try to correct minor typos in commands
setopt histignoredups   # don't store duplicate history entries
setopt sharehistory     # share history between shells

# --- Aliases ---
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lla='ls -lA'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'

# --- Completion system ---
autoload -Uz compinit
compinit

# --- zsh-autosuggestions ---
# (Suggestion appears in a faint color as you type)
# Set style BEFORE sourcing if you want to change it
# Example: slightly dim grey suggestion color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# --- zsh-syntax-highlighting ---
# IMPORTANT: this should be near the end of interactive config
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Starship prompt (keep this LAST that touches the prompt) ---
eval "$(starship init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export SUDO_EDITOR=nvim
export TERMINAL=kitty

# Created by `pipx` on 2025-12-14 16:45:23
export PATH="$PATH:/home/danilosky/.local/bin"
export PATH="$PATH:/home/danilosky/bin"
