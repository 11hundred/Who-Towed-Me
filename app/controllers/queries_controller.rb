class QueriesController < ApplicationController 
  def index 
    
  end 

  def lookup 
    require 'open-uri'
    require 'json'
    
    url = 'https://data.cityofchicago.org/api/views/ygr5-vcbg/rows.json'
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    
    #all towed vehicle data
    towed_vehicles = parsed_data["data"]
   
    #my search term
    search_by = params["plate-number"]

    #search within array
    license_plates = towed_vehicles.select do |arr|
      if arr.include?(search_by)
        true
      end
    end
    
    #extract plate content
    license_plates.each do |license_plate|

      google_map_url_base = "http://maps.googleapis.com/maps/api/geocode/json?address="

    	@all = license_plate
    	@plate = license_plate[13]
    	@state = license_plate[14]	
    	@color =license_plate[12] 
    	@type = license_plate[10] 
    	@make =license_plate[9]
    	@date_towed = license_plate[8]
    	@facility_phone_number = license_plate[16]
      @address = license_plate[15]
      
      address = license_plate[15]
      address_url = "#{address.tr!(' ', '+')}+Chicago+IL"

      google_map_url = google_map_url_base + address_url    
      raw_data = open(google_map_url).read
      parsed_data = JSON.parse(raw_data)

      # get specific hash results
      latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
      longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
 
      @lat = latitude
      @long = longitude  

    end  


	  # 	Change Abbreviated Values 
		   	# Colors  --> 	
			
			 if @color == "SIL"
				 @color ="SILVER" 
			 end
			 if @color == "GRY"
				 @color ="GRAY" 
			 end
			 if @color == "BLK"
				 @color ="BLACK" 
			 end
			 if @color == "BLU"
				 @color ="BLUE" 
			 end
			 if @color == "GLD"
				 @color ="GOLD" 
			 end
			 if @color == "WHI"
				 @color ="WHITE" 
			 end
			 if @color == "MAR"
				 @color ="MAROON" 
			 end
			 if @color == "PLE"
				 @color ="PURPLE" 
			 end
			 if @color == "GRN"
				 @color ="GREEN" 
			 end

 			if @make == "CADI"
 				@make ="Cadillac" 
 			end
 			if @make == "ACUR"
 				@make ="Acura" 
 			end
 			if @make == "AUDI"
 				@make ="Audi" 
 			end
 			if @make == "BUIC"
 				@make ="Buick" 
 			end
 			if @make == "DODG"
 				@make ="Dodge" 
 			end
 			if @make == "CHEV"
 				@make ="Chevy" 
 			end
 			if @make == "HOND"
 				@make ="Honda" 
 			end
 			if @make == "HYUN"
 				@make ="Hyundai" 
 			end
 			if @make == "INFI"
 				@make ="Infiniti" 
 			end
 			if @make == "LEXS"
 				@make ="Lexus" 
 			end
 			if @make == "INFI"
 				@make ="Infiniti" 
 			end
 			if @make == "LINC"
 				@make ="Lincoln" 
 			end
 			if @make == "MAZD"
 				@make ="Mazda" 
 			end
 			if @make == "LINC"
 				@make ="Lincoln" 
 			end
 			if @make == "MITS"
 				@make ="Mitsubishi" 
 			end
 			if @make == "NISS"
 				@make ="Nissaan" 
 			end
 			if @make == "PONT"
 				@make ="Pontiac" 
 			end
 			if @make == "SUZI"
 				@make ="Suzuki" 
 			end
 			if @make == "TOYT"
 				@make ="Toyota" 
 			end
 			if @make == "VOLK"
 				@make ="Volkswagon" 
 			end
 			if @make == "VOLK"
 				@make ="Volkswagon" 
 			end
      
    render "lookup"
    
  end 




  
end  
 
 
 
 