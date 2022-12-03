Rails.application.routes.draw do
  # rootを定義しました。すいません。やっと意味がわかりました。
  root "tasks#index"
  resources :tasks
end
