Rxngif::Application.routes.draw do
  # create an RCAV that supports the following request:
  # a user can type in '/pictures' into the address bar
  # and see a list of pictures

  # CREATE
  get "/pictures/new", { :controller => "pictures", :action => "new"}
  get "/pictures/create", { :controller => "pictures", :action => "create"}

  # READ
  get "/pictures", { :controller => "pictures", :action => "index" }
  get "/pictures/:id", { :controller => "pictures", :action => "show"}

  # UPDATE
  get "/pictures/:id/edit", { :controller => "pictures", :action => "edit" }
  get "/pictures/:id/update", { :controller => "pictures", :action=> "update"}

  # DESTROY
  get "/pictures/:id/destroy", { :controller => "pictures", :action => "destroy"}








end
