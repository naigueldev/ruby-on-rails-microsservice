Rails.application.routes.draw do
  post '/transactions', to: 'transactions#import'
end
