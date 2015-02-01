class QueriesMakeController < ApplicationController 



  def make 
    require 'open-uri'
    require 'json'
    
    url = 'https://data.cityofchicago.org/api/views/ygr5-vcbg/rows.json'
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    
    towed_vehicles = parsed_data["data"]
    
    
    
    towed_vehicles = parsed_data["data"]
    
    search_by = params["make"]
    
    license_plates = towed_vehicles.select do |arr|
      if arr.include?(search_by)
        true
      end
    end
    
    @each_plate = license_plates.each do |license_plate|
		

      # Set up Variables

      #################
      # Variables are not working, they pick up the first item and repeat across all values
      #################

    	@all = license_plate
    	@plate = license_plate[13]
    	@state = license_plate[14]	
    	@color =license_plate[12] 
    	@type = license_plate[10] 
    	@make =license_plate[9]
    	@date_towed = license_plate[8]
    	@facility_phone_number = license_plate[16]
      @address = license_plate[15]

      # Bring in abbreviation fix from Application Controller
      fullname("abbrev")

  	end

    render "queries/make"
    
  end 



end  
 
 
 
 