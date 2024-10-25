# Transient Prompt Function (if desired)
function starship_transient_prompt_func
  echo (starship module time)(starship module character)
end

# Load Starship Prompt if in Interactive Mode
if status is-interactive
  starship init fish | source
end

# Tabtab Source for Autocompletions
if test -f ~/.config/tabtab/fish/__tabtab.fish
  . ~/.config/tabtab/fish/__tabtab.fish
end

# Automatically Change to Specific Workspace Directories
if test -d "/workspace/ui"
  cd /workspace/ui
  echo "Entered /workspace/ui"
else if test -d "/workspace/playground"
  cd /workspace/playground
  echo "Entered /workspace/playground"
else
  echo "Neither 'ui' nor 'playground' directory exists in /workspace."
end
