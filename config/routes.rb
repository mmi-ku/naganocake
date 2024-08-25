Rails.application.routes.draw do
  
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, kip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

get 'homes/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
