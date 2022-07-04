local FOUND_COMMAND=$+commands[cod]

if ! [[ $FOUND_COMMAND -eq 1 ]] && [[ -x ${0:A:h}/cod ]]; then
  FOUND_COMMAND=1
  alias cod="${0:A:h}/cod"
fi

if [[ $FOUND_COMMAND -eq 1 ]]; then
  source <(cod init $$ zsh)
fi
