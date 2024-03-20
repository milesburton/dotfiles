function starship_transient_rprompt_func
  starship module time
end
function starship_transient_prompt_func
  starship module character
end


if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

enable_transience

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
