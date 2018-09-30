# Set system timestamp as the right prompt, and use the same color that
# purer prompt uses for the branch name.
branch_name_color=242
RPROMPT="%F{$branch_name_color}%*"

autoload -U promptinit; promptinit
prompt purer

