# Regular syntax highlighting colors
set fish_color_normal normal
set fish_color_command 005fd7 purple
set fish_color_param 00afff cyan
set fish_color_redirection normal
set fish_color_comment red
set fish_color_error red --bold
set fish_color_escape cyan
set fish_color_operator cyan
set fish_color_quote brown
set fish_color_autosuggestion 555 yellow
set fish_color_valid_path --underline

set fish_color_cwd green
set fish_color_cwd_root red

# Background color for matching quotes and parenthesis
set fish_color_match cyan

# Background color for search matches
set fish_color_search_match --background=purple

# Pager colors
set fish_pager_color_prefix cyan
set fish_pager_color_completion normal
set fish_pager_color_description 555 yellow
set fish_pager_color_progress cyan

# Directory history colors
set fish_color_history_current cyan

# Prompt colors
set fish_color_date yellow
set fish_color_user cyan
set fish_color_host magenta
set fish_color_virtualenv blue

set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_hide_untrackedfiles 1

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_showupstream "informative"
set __fish_git_prompt_char_upstream_ahead "↑"
set __fish_git_prompt_char_upstream_behind "↓"
set __fish_git_prompt_char_upstream_prefix ""

set __fish_git_prompt_char_stagedstate "●"
set __fish_git_prompt_char_dirtystate "✚"
set __fish_git_prompt_char_untrackedfiles "…"
set __fish_git_prompt_char_conflictedstate "✖"
set __fish_git_prompt_char_cleanstate "✔"

set __fish_git_prompt_color_dirtystate blue
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_untrackedfiles $fish_color_normal
set __fish_git_prompt_color_cleanstate green --bold

# use virtualfish compatible aliases:
# https://github.com/adambrenecki/virtualfish
eval (python3 -m virtualfish compat_aliases)

# export PATH
set -x PATH $PATH $HOME/bin
