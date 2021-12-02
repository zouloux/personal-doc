# Oh My ZSH


1. Install [Oh My ZSH](https://ohmyz.sh/)
- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

2. Edit theme
Edit theme to prepend host on prompt ([more info](https://stackoverflow.com/questions/24682876/change-oh-my-zsh-theme-when-ssh-is-run/50356080)) :
`vi ~/.oh-my-zsh/themes/zouloux.zsh-theme`
Content :
```
local hostname="%{$fg_bold[black]%}%m"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${hostname} ${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
```
3. Install zsh-autosuggestions plugin

- `brew install zsh-autosuggestions`

3. Edit config

- `vi ~/.zshrc`

```
# Change this line :
ZSH_THEME="zouloux"
# Change this line :
plugins=( git sublime zsh-autosuggestions)
# Add this line :
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```


