if status is-interactive
  export PATH="$HOME/Apps:$HOME/.cargo/bin:$PATH"
  export EDITOR=nvim

  # aliases
  alias cd="z"
  alias nv="nvim"
  alias ls="eza --color=always"
  alias tree="eza --tree --color=always --icons=always"

  # function extr --description "Extract archive"
  #   set --local file
  #   for file in $argv
  #     set --local type
  #     if (path extension $argv) is ".zip"
  #       unzip $argv
  #     end
  #
  #     if (path extension $argv) is ".gz"
  #       unzip gzip -d $argv
  #     end
  #   end
  # end
  
  function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
      builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
  end

  function fish_greeting
    chafa -s 80 -f symbols --symbols ascii --fg-only /tmp/wallpaper.png
  end

  # misc
  zoxide init fish | source
  starship init fish | source
end
