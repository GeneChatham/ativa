Ativa::Application.routes.draw do
  devise_for :users
  root 'projects#index'

  resources :projects do
    resources :posts, except: :index
  end

  get 'users/:id' => 'users#show', as: 'user'
end


#                   Prefix Verb   URI Pattern                                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                      devise/sessions#destroy
#            user_password POST   /users/password(.:format)                      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                 devise/passwords#edit
#                          PATCH  /users/password(.:format)                      devise/passwords#update
#                          PUT    /users/password(.:format)                      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                        devise/registrations#cancel
#        user_registration POST   /users(.:format)                               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                          devise/registrations#edit
#                          PATCH  /users(.:format)                               devise/registrations#update
#                          PUT    /users(.:format)                               devise/registrations#update
#                          DELETE /users(.:format)                               devise/registrations#destroy
#                     root GET    /                                              projects#index
#            project_posts POST   /projects/:project_id/posts(.:format)          posts#create
#         new_project_post GET    /projects/:project_id/posts/new(.:format)      posts#new
#        edit_project_post GET    /projects/:project_id/posts/:id/edit(.:format) posts#edit
#             project_post GET    /projects/:project_id/posts/:id(.:format)      posts#show
#                          PATCH  /projects/:project_id/posts/:id(.:format)      posts#update
#                          PUT    /projects/:project_id/posts/:id(.:format)      posts#update
#                          DELETE /projects/:project_id/posts/:id(.:format)      posts#destroy
#                 projects GET    /projects(.:format)                            projects#index
#                          POST   /projects(.:format)                            projects#create
#              new_project GET    /projects/new(.:format)                        projects#new
#             edit_project GET    /projects/:id/edit(.:format)                   projects#edit
#                  project GET    /projects/:id(.:format)                        projects#show
#                          PATCH  /projects/:id(.:format)                        projects#update
#                          PUT    /projects/:id(.:format)                        projects#update
#                          DELETE /projects/:id(.:format)                        projects#destroy
#                     user GET    /users/:id(.:format)                           users#show