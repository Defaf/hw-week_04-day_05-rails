Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/posts", to: "posts#index", as: "posts" # post_path =/post
  get '/posts/new', to: "posts#new", as: "new_post"# post_path(post)=/posts/new
  
  get '/posts/:id/edit', to: "posts#edit",as: "edit_post"# edit_post_path(@post)

  get "/posts/:id", to: "posts#show", as: "post" # post_path(post)=/posts/:id
  delete '/posts/:id', to: "posts#destroy"
  post '/posts', to: "posts#create"
  patch '/posts/:id', to: "posts#update"
  
  resources :posts do
    resources :comments
  end
end
