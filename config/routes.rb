Rails.application.routes.draw do
  devise_for :users


  resources :routines do 
    resources :exercises
  end 

  devise_scope :user do 
  root 'devise/sessions#new'
  end 
end



#||===============================ROUTES GETTIN RAKED=========================================||
#                   Prefix Verb   URI Pattern                                        Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                           devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                           devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                          devise/sessions#destroy
#            user_password POST   /users/password(.:format)                          devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                      devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                     devise/passwords#edit
#                          PATCH  /users/password(.:format)                          devise/passwords#update
#                          PUT    /users/password(.:format)                          devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                            devise/registrations#cancel
#        user_registration POST   /users(.:format)                                   devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                           devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                              devise/registrations#edit
#                          PATCH  /users(.:format)                                   devise/registrations#update
#                          PUT    /users(.:format)                                   devise/registrations#update
#                          DELETE /users(.:format)                                   devise/registrations#destroy

#        routine_exercises GET    /routines/:routine_id/exercises(.:format)          exercises#index
#                          POST   /routines/:routine_id/exercises(.:format)          exercises#create
#     new_routine_exercise GET    /routines/:routine_id/exercises/new(.:format)      exercises#new
#    edit_routine_exercise GET    /routines/:routine_id/exercises/:id/edit(.:format) exercises#edit
#         routine_exercise GET    /routines/:routine_id/exercises/:id(.:format)      exercises#show
#                          PATCH  /routines/:routine_id/exercises/:id(.:format)      exercises#update
#                          PUT    /routines/:routine_id/exercises/:id(.:format)      exercises#update
#                          DELETE /routines/:routine_id/exercises/:id(.:format)      exercises#destroy

#                 routines GET    /routines(.:format)                                routines#index
#                          POST   /routines(.:format)                                routines#create
#              new_routine GET    /routines/new(.:format)                            routines#new
#             edit_routine GET    /routines/:id/edit(.:format)                       routines#edit
#                  routine GET    /routines/:id(.:format)                            routines#show
#                          PATCH  /routines/:id(.:format)                            routines#update
#                          PUT    /routines/:id(.:format)                            routines#update
#                          DELETE /routines/:id(.:format)                            routines#destroy
