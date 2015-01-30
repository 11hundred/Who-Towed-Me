Rails.application.routes.draw do

  get("/", :controller  => "queries", :action => "index")
  get("lookup", :controller  => "queries", :action => "lookup")
  get("lookup/make", :controller  => "queries_make", :action => "make")


end
