Euhomes::Application.routes.draw do
  root 'welcome#index'

  %w(aboutus services contactus faq testimonials gallery).each do |page|
    match "/#{page}" => "pages##{page}", via: :get
  end
end
