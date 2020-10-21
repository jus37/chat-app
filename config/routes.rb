Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] 
  #なぜcreateも指定しないとビューファイルが作成できないのか
   #→form_withメソッドの仕組みで保存先もないとパスがわからないから
end
