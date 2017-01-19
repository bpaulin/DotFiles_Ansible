[user]
  name = {{ git.name }}
  email = {{ git.email }}

[github]
  user = {{ git.github }}

[core]
  excludesfile = ~/.gitignore
  editor = vim

[branch]
  autosetuprebas = always

[branch "master"]
  remote = origin
  merge = refs/heads/master

[include]
  path = ~/.gitalias

[color]
  ui = true

[diff]
  tool = vimdiff

[push]
  default = simple
