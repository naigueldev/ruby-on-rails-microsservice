Rails.application.routes.draw do
  post '/upload', to: 'uploads#import'
end
