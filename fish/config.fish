## alias

## set prompt
fish_vi_key_bindings

function fish_prompt
    echo -n (set_color normal) (prompt_pwd)
    echo -n (set_color green)(fish_git_prompt)
    echo -n (set_color yellow) "\$ "
end

function fish_mode_prompt
    switch $fish_bind_mode
        case default
            echo -ne "\e[2 q"
        case insert
            echo -ne "\e[6 q"
        case visual
            echo -ne "\e[2 q"
        case replace_one
            echo -ne "\e[4 q"
        case replace
            echo -ne "\e[4 q"
    end
end

## set proxy
set -gx http_proxy http://127.0.0.1:7897
set -gx https_proxy http://127.0.0.1:7897

## greeting
function fish_greeting
    set_color --bold yellow
    echo "Hello Oliver!"
end


## set to english
##set -x LANG en_US.UTF-8
