function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    # time
    set_color $fish_color_date
    echo -n (date +'%H:%M ')
    set_color normal

    # User
    set_color $fish_color_user
    echo -n (whoami)
    set_color normal

    echo -n ' at '

    # Host
    set_color $fish_color_host
    echo -n (hostname -s)
    set_color normal

    echo -n ' in '

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    printf '%s\n' (__fish_git_prompt)

    # Python virtualenv, if working in venv
    if test $VIRTUAL_ENV
    printf "(%s) " (set_color $fish_color_virtualenv)(basename $VIRTUAL_ENV)(set_color normal)
    end

    if not test $last_status -eq 0
    set_color $fish_color_error
    end

    echo -n '➤ '
end
