ruby
- Install rvm && ruby (https://rvm.io/)
- create project dir in your workspace
- rvm gemset create <only_project_name>

readline (talvez não seja mais necessário)
- *On macOS, install `brew install readline`
- brew link --force readline
- ruby_configure_flags=--with-readline-dir=/usr/local/opt/readline
- rvm reinstall all

gems
- create Gemfile
- Install guard (https://github.com/guard/guard-rspec)
- `rspec --init`
- Install `brew install terminal-notifier` and `gem install terminal-notifier-guard` (not required)
- Install gems `bundle install`
