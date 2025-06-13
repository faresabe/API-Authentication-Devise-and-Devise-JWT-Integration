Rails.application.routes.draw do
  devise_for :accounts, path: '' , path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  
  controllers: {
    sessions: 'accounts/sessions',
    registrations: 'accounts/registration'

  }
 
end
