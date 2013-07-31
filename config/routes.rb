Rxngif::Application.routes.draw do
  # create an RCAV that supports the following request:
  # a user can type in '/pictures' into the address bar
  # and see a list of pictures

  # CREATE
  get "/pictures/new", { :controller => "pictures", :action => "new", :as => :new_picture }
  get "/pictures/create", { :controller => "pictures", :action => "create", :as => :create_picture}

  # READ
  get "/pictures", { :controller => "pictures", :action => "index", :as => :pictures }
  get "/pictures/:id", { :controller => "pictures", :action => "show", :as => :picture }

  # UPDATE
  get "/pictures/:id/edit", { :controller => "pictures", :action => "edit", :as => :edit_picture }
  get "/pictures/:id/update", { :controller => "pictures", :action=> "update", :as => :update_picture }

  # DESTROY
  get "/pictures/:id/destroy", { :controller => "pictures", :action => "destroy", :as => :destroy_picture}








end
