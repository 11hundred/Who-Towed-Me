Rails.application.routes.draw do

  get("/", :controller  => "queries", :action => "index")
  get("lookup/plate/", :controller  => "queries", :action => "lookup")
  get("lookup/make/:make", :controller  => "queries_make", :action => "make")


end
