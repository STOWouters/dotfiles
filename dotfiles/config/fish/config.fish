# set prompt colors
set -xg fish_color_date yellow
set -xg fish_color_user cyan
set -xg fish_color_host magenta
set -xg fish_color_virtualenv blue

set -xg __fish_git_prompt_show_informative_status 1
set -xg __fish_git_prompt_hide_untrackedfiles 1

set -xg __fish_git_prompt_color_branch magenta bold
set -xg __fish_git_prompt_showupstream "informative"
set -xg __fish_git_prompt_char_upstream_ahead "↑"
set -xg __fish_git_prompt_char_upstream_behind "↓"
set -xg __fish_git_prompt_char_upstream_prefix ""

set -xg __fish_git_prompt_char_stagedstate "●"
set -xg __fish_git_prompt_char_dirtystate "✚"
set -xg __fish_git_prompt_char_untrackedfiles "…"
set -xg __fish_git_prompt_char_conflictedstate "✖"
set -xg __fish_git_prompt_char_cleanstate "✔"

set -xg __fish_git_prompt_color_dirtystate blue
set -xg __fish_git_prompt_color_stagedstate yellow
set -xg __fish_git_prompt_color_invalidstate red
set -xg __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -xg __fish_git_prompt_color_cleanstate green bold

# use virtualfish compatible aliases:
# https://github.com/adambrenecki/virtualfish
#
# only source it when using fish 2.1 or older
set -xg VIRTUALFISH_COMPAT_ALIASES
if not test $FISH_VERSION = (echo $FISH_VERSION | grep -E "^(1|(2\.0))")
    source virtual.fish
end
