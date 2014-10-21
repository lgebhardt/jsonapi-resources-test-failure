Rails.application.routes.draw do
  jsonapi_resources :domains do
    jsonapi_links :records
  end
  jsonapi_resources :records
end
