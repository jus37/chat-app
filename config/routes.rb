Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update, :index]
  resources :rooms, only: [:new, :create] 
  #なぜcreateも指定しないとビューファイルが作成できないのか
   #→form_withメソッドの仕組みで保存先もないとパスがわからないから
end
