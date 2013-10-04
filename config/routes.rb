Euhomes::Application.routes.draw do
  root 'welcome#index'

  %w(aboutus services contactus testimonials gallery).each do |page|
    match "/#{page}" => "pages##{page}", via: :get
  end
end
