bake(){
  bundle exec rake
}

be(){
  bundle exec
}

bi(){
  bundle install
}

complete -o default -o nospace -F _rakecomplete bake
