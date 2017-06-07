bake(){
  bundle exec rake
}

bur(){
  bundle exec rspec
}

be(){
  bundle exec
}

bi(){
  bundle install
}

complete -o default -o nospace -F _rakecomplete bake
