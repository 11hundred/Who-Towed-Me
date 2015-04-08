class QueriesController < ApplicationController 


  def index 
    require 'open-uri'
    require 'json'
    
    url = 'https://data.cityofchicago.org/resource/ygr5-vcbg.json'
    raw_data = open(url).read
    all_plates = JSON.parse(raw_data)
    @all_plates = all_plates

  	@plate_count = all_plates.count

  end 

  def lookup 
    require 'open-uri'
    require 'json'
    require 'ostruct'
    
    url = 'https://data.cityofchicago.org/resource/ygr5-vcbg.json'
    raw_data = open(url).read
    all_plates = JSON.parse(raw_data)
    
    # Search within array to return based on plate number
    license_plates = all_plates.select {|plate| plate["plate"] == params[:plate] }

  	@plate_search = params[:plate]
    # Remove Hash from Array
    license_plate = license_plates[0]
    
    # Set plate to receive methods from key values
    @plate = OpenStruct.new license_plate
    
    if license_plate != nil
    # Get Ready to plot the long lat we get from City Data on a Google map
    google_map_url_base = "http://maps.googleapis.com/maps/api/geocode/json?address="
    address = @plate.towed_to_address
    address_url = "#{address.tr!(' ', '+')}+Chicago+IL"
    google_map_url = google_map_url_base + address_url    
    
    # Google Map Data
    raw_data = open(google_map_url).read
    parsed_data = JSON.parse(raw_data)
    
    # get specific hash results
    latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

    # Create specific instance variables 
    @tow_headline = ["Next time, check twice and park once.", "It happens.", "Yes, it was towed."]
    @lat = latitude
    @long = longitude  
    @address = address.tr!('+', ' ')
    @color = @plate.color
  	@make = @plate.make
  	@date = @plate.tow_date[0..9]
    end
 
    # Bring in abbreviation fix from Application Controller
    fullname("abbrev")


  end 



end  
 
 
 
 