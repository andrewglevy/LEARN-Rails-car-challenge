Rails.application.routes.draw do
  get 'index' => 'cars#index'
  get 'status' => 'cars#status'
  get 'accelerate' => 'cars#accelerate'
  get 'brake' => 'cars#brake'
  get 'lightswitch' => 'cars#lightswitch'
  get 'pbrake' => 'cars#pbrake'
end
