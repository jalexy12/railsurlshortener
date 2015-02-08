Rails.application.routes.draw do
	resources :shorturls
 	get "/" => "shorturls#index"
end
