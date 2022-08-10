Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/employees" => "employees#index"

  get "/employees/:id" => "employees#show"

  post "/employees" => "employees#create"

  patch "/employees/:id" => "employees#update" 

  delete "/employees/:id" => "employees#destroy" 
end
