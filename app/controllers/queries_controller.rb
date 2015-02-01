class QueriesController < ApplicationController 


  def index 
  end 

  def lookup 
    require 'open-uri'
    require 'json'
    
    # Base data
    url = 'https://data.cityofchicago.org/api/views/ygr5-vcbg/rows.json'
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    
    # All towed vehicle data
    towed_vehicles = parsed_data["data"]
   
    # My search term
    search_by = params["plate-number"]

    # Search within array
    license_plates = towed_vehicles.select do |arr|
      if arr.include?(search_by)
        true
      end
    end
    
    # Extract plate content
    license_plates.each do |license_plate|

      # Set up Map Actions
      # Google Map URL
      google_map_url_base = "http://maps.googleapis.com/maps/api/geocode/json?address="
      address = license_plate[15]
      address_url = "#{address.tr!(' ', '+')}+Chicago+IL"
      google_map_url = google_map_url_base + address_url    
      # Google Map Data
      raw_data = open(google_map_url).read
      parsed_data = JSON.parse(raw_data)
      # get specific hash results
      latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
      longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

      # Set up Variables
    	@all = license_plate
    	@plate = license_plate[13]
    	@state = license_plate[14]	
    	@color =license_plate[12] 
    	@type = license_plate[10] 
    	@make =license_plate[9]
    	@date_towed = license_plate[8]
    	@facility_phone_number = license_plate[16]
      @address = license_plate[15]
      @lat = latitude
      @long = longitude  

    end  

    # Bring in abbreviation fix from Application Controller
    fullname("abbrev")
    
  end 



end  
 
 
 
 