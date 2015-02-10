class QueriesMakeController < ApplicationController 

  def make 
    require 'open-uri'
    require 'json'
    require 'ostruct'
    
    url = 'https://data.cityofchicago.org/resource/ygr5-vcbg.json'
    raw_data = open(url).read
    all_plates = JSON.parse(raw_data)
    @make = params[:make]
    # Search within array
    @all_plates = all_plates.select {|plate| plate["make"] == params[:make] }
    
    fullname("abbrev")

    render "queries/make"
    
  end 

end  
 
 
 
 