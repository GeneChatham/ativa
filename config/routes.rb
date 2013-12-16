Ativa::Application.routes.draw do
  devise_for :users
  root 'projects#index'

  resources :projects do
    resources :posts, except: :index
  end

  get 'users/:id' => 'users#show', as: 'user'
end



#              root GET    /                                              projects#index
#     project_posts POST   /projects/:project_id/posts(.:format)          posts#create
#  new_project_post GET    /projects/:project_id/posts/new(.:format)      posts#new
# edit_project_post GET    /projects/:project_id/posts/:id/edit(.:format) posts#edit
#      project_post GET    /projects/:project_id/posts/:id(.:format)      posts#show
#                   PATCH  /projects/:project_id/posts/:id(.:format)      posts#update
#                   PUT    /projects/:project_id/posts/:id(.:format)      posts#update
#                   DELETE /projects/:project_id/posts/:id(.:format)      posts#destroy
#          projects GET    /projects(.:format)                            projects#index
#                   POST   /projects(.:format)                            projects#create
#       new_project GET    /projects/new(.:format)                        projects#new
#      edit_project GET    /projects/:id/edit(.:format)                   projects#edit
#           project GET    /projects/:id(.:format)                        projects#show
#                   PATCH  /projects/:id(.:format)                        projects#update
#                   PUT    /projects/:id(.:format)                        projects#update
#                   DELETE /projects/:id(.:format)                        projects#destroy
#              user GET    /users/:id(.:format)                           users#show