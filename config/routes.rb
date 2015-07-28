Rails.application.routes.draw do
 get "/entries/new" => "entries#new"
 get "/entries" => "entries#index"
 post"/entries" => "entries#create"
 get "/entries/:id/edit" => "entries#edit"
 put "/entries/:id" => "entries#update"
 get "/entries/:id" => "entries#show"
 delete "/entries/:id" => "entries#destroy"
 get "/" => "entries/index"
end
