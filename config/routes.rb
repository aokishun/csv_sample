Rails.application.routes.draw do
  root 'home#top'

  #home に限り、post で import 処理を許可する
  resources 'home', only: :top do
    collection { post :import }
  end

  resources 'home', only: :top

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
