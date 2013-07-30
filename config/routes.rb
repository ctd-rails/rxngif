Rxngif::Application.routes.draw do
  # create an RCAV that supports the following request:
  # a user can type in '/pictures' into the address bar
  # and see a list of pictures
  get "/pictures", { :controller => "pictures", :action => "index" }
end
