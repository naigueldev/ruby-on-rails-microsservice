Rails.application.routes.draw do
  post '/transactions/import', to: 'transactions#import'
  get "/transactions", to: "transactions#list"
end
