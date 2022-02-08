Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/forex", { :controller => "application", :action => "currency_pairs" })
  #get("/forex/:first_currency/:second_currency", { :controller => "application", :action => "currency_pairs" })
  #get("/forex/:first_currency/:second_currency", { :controller => "application", :action => "currency_pairs" })

end
