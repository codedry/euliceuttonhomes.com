Euhomes::Application.routes.draw do
  resources :contacts, only: [:new, :create]

  root 'welcome#index'

  %w(aboutus services contactus faq testimonials gallery dissertation).each do |page|
    match "/#{page}" => "pages##{page}", via: :get
  end
end
