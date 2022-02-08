Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/forex", { :controller => "application", :action => "first_currency" })
  get("/forex/:currency", { :controller => "application", :action => "second_currency" })
  get("/forex/:currency1/:currency2", { :controller => "application", :action => "conversion" })


end
