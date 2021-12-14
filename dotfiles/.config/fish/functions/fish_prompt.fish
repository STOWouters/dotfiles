function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color $fish_color_normal)
    end

    # User
    set_color $fish_color_user
    echo -n (whoami)
    set_color $fish_color_normal

    echo -n ' at '

    # Host
    set_color $fish_color_host
    echo -n (hostname|cut -d . -f 1)
    set_color $fish_color_normal

    echo -n ' in '

    # Current working directory
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color $fish_color_normal

    # Git status (if any)
    #
    # https://fishshell.com/docs/current/cmds/fish_git_prompt.html
    printf '%s\n' (fish_git_prompt)

    # Python virtualenv, if working in venv
    if test $VIRTUAL_ENV
        printf "(%s) " (set_color $fish_color_virtualenv)(basename $VIRTUAL_ENV)(set_color $fish_color_normal)
    end

    # Reset color back to origin
    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    echo -n '> '
end
