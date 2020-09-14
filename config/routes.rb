Rails.application.routes.draw do
  get 'miles/index'
  root to: "miles#index"
end
