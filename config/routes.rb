Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   # 追加
  namespace :api do
    namespace :v1 do
      # api test action
        get 'search', to: "sort_infos#search"
    end
  end
end