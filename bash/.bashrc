c_reset=$'\e[0m'
c_path=$'\e[36m'
c_prompt=$'\e[32m'
c_git=$'\e[33m'

__prompt() {
  local branch
  branch=$(git branch --show-current 2>/dev/null)
  if [[ -z "$branch" ]] && git rev-parse --git-dir &>/dev/null; then
    branch=$(git rev-parse --short HEAD 2>/dev/null)
  fi

  local git_seg=""
  [[ -n "$branch" ]] && git_seg="  \[${c_git}\]${branch}\[${c_reset}\]"

  PS1="\[${c_path}\]\w\[${c_reset}\]${git_seg}  \[${c_prompt}\]>\[${c_reset}\] "
}
PROMPT_COMMAND=__prompt

PS1="\[${c_path}\]\w\[${c_reset}\] \[${c_prompt}\]>\[${c_reset}\] "

if command -v eza &>/dev/null; then
  alias ls='eza -lh  --group-directories-first --icons=auto --git'
  alias ll='eza -lh  --group-directories-first --icons=auto --git'
  alias la='eza -lah --group-directories-first --icons=auto --git'
  alias lt='eza --tree --level=2 --icons=auto'
  alias lg='eza --group-directories-first --icons=auto'
else
  alias ls='ls -lh  --color=auto --group-directories-first'
  alias ll='ls -lh  --color=auto --group-directories-first'
  alias la='ls -lah --color=auto --group-directories-first'
  alias lt='ls -R   --color=auto'
  alias lg='ls      --color=auto --group-directories-first'
fi

alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'
command -v bat &>/dev/null && alias cat='bat --style=plain --paging=never'

alias ..='cd ..'
alias ...='cd ../..'