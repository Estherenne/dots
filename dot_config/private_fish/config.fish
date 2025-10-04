if status is-interactive
  export PATH="$HOME/.software:$PATH"
  export EDITOR=nvim

  # aliases
  alias cd="z"
  alias nv="nvim"
  
  # functions
  function ls
   eza --color=always $argv
  end

  function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
      builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
  end

  function tree
    eza --tree --color=always --icons=always $argv
  end

  function fish_greeting
    fastfetch
  end

  # misc
  zoxide init fish | source
  starship init fish | source
end
