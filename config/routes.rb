Rails.application.routes.draw do
  get 'blogs', to: "blogs#index", as: "blogs"
  get 'blogs/new', to: "blogs#new", as: "blog_new"
  get 'blogs/:id/edit', to: "blogs#edit", as: "blog_edit" 
  get 'blogs/:id', to: "blogs#show", as: "blog"
  post 'blogs', to: "blogs#create"
  put 'blogs/:id', to: "blogs#update"
  delete 'blogs/:id', to: "blogs#destroy"
  patch 'blogs/:id', to: "blogs#update"

  root "blogs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
