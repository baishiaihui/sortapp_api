Rails.application.routes.draw do
  # get 'auth/login'
  # get 'auth/auto_login'
  # get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        # 詳細表示用アクション
        resources :sort_infos, only: [:show]
      
        # 検索実行用アクション 
        get 'search', to: "sort_infos#search"

        # ログイン用
        post "login", to: "auth#login"

        # トークンの確認
        get "/auto_login", to: "auth#auto_login"
    end
  end
end
