# TDD chalenge

## Desafio
Escrever um conversor de números naturais para romanos usando TDD (Test Driven Development)

- 1. Fazer um _fork_ em sua conta do GitHub
- 2. Criar uma _branch_ saindo da `dev` em seu _fork_
- 3. Fazer o conversor sobre o esqueleto da dev já montado
- 4. Fazer um Pull Request (PR) para a `dev` do repositório _hugopgodoy/converters.git_

> Obs: Existe uma solução pronta na _branch_ `master` para consulta

## Setup (caso queira usar este mesmo projeto)
- Install _rvm_ && _ruby_ (https://rvm.io/)
- git clone git@github.com:hugopgodoy/converters.git
- `cd converters` e verificar compatibilidade da versão do ruby (`rvm list` && `rmv install X.X.X`)
- Download das libs (gems) `bundle install`
- Install `brew install terminal-notifier` (opicional)


## Setup (caso queira criar um projeto separado)
### ruby
- Install rvm && ruby (https://rvm.io/)
- create project dir in your workspace
- rvm gemset create <only_project_name>

### readline (talvez não seja mais necessário)
- *On macOS, install `brew install readline`
- brew link --force readline
- ruby_configure_flags=--with-readline-dir=/usr/local/opt/readline
- rvm reinstall all

### gems
- create Gemfile
- Install guard (https://github.com/guard/guard-rspec)
- `rspec --init`
- Install `brew install terminal-notifier`
- Install gems `bundle install`
