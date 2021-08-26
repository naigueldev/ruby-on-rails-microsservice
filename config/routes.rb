Rails.application.routes.draw do
  post '/transactions/import', to: 'transactions#import'
end
