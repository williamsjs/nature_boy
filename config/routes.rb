Rails.application.routes.draw do
  devise_scope :user do
    get '/user/sessions' => 'some_devise_controller'
  end

  devise_for :users, controllers: { sessions: 'users/sessions' }, path_names: { sign_in: 'login' }

  root to: 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
