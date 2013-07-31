Rxngif::Application.routes.draw do
  # create an RCAV that supports the following request:
  # a user can type in '/pictures' into the address bar
  # and see a list of pictures

  # CREATE
  get "/pictures/new", { :controller => "pictures", :action => "new", :as => :new_picture }
  post "/pictures", { :controller => "pictures", :action => "create", :as => :pictures}

  # READ
  get "/pictures", { :controller => "pictures", :action => "index" }
  get "/pictures/:id", { :controller => "pictures", :action => "show", :as => :picture }

  # UPDATE
  get "/pictures/:id/edit", { :controller => "pictures", :action => "edit", :as => :edit_picture }
  put "/pictures/:id", { :controller => "pictures", :action=> "update" }

  # DESTROY
  delete "/pictures/:id", { :controller => "pictures", :action => "destroy" }

end
