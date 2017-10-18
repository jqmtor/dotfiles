if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

if [[ -f /usr/local/opt/chruby/share/chruby/auto.sh ]]; then
  # change ruby version automatically according to .ruby-version file
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi
