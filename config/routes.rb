ExampleRailsAssetStructure::Application.routes.draw do

  root :to => 'content#feature'
  match "/article", :to => 'content#article'

end
