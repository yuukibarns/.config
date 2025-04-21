if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PYVENV ~/pyvenv/.venv/bin/activate.fish

starship init fish | source
zoxide init fish | source
direnv hook fish | source

function rm
    for file in $argv
        if test -e "$file"
            trash-put "$file" && echo "moved '$file' to trash."
        else
            echo "file '$file' does not exist."
        end
    end
end

# function nvim
#     ~/nvim-linux-x86_64/bin/nvim
# end

# set PATH $PATH /home/yuukibarns/nvim-linux-x86_64/bin/
# set PATH $PATH /home/yuukibarns/nvim-10-4/bin/

# Created by `pipx` on 2025-01-07 15:05:58
set PATH $PATH /home/yuukibarns/.local/bin
