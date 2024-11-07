Rails.application.routes.draw do

  get("/backdoor", { :controller => "items", :action => "display_form" })

  post("/make_a_new_item", { :controller => "items", :action => "new_form" })

  get("/", { :controller => "items", :action => "index" })  
end
