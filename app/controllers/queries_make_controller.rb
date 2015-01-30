class QueriesMakeController < ApplicationController 

  def make 
    require 'open-uri'
    require 'json'
    
    url = 'https://data.cityofchicago.org/api/views/ygr5-vcbg/rows.json'
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    
    towed_vehicles = parsed_data["data"]
    
    search_by = params["make"]


    license_plates = towed_vehicles.select do |arr|
      if arr.include?(search_by)
        true
      end
    end
    

    @each_plate = license_plates.each do |license_plate|
		
    	color =license_plate[12] 
    	make =license_plate[9]
	
			
    			if color == "SIL"
    				@color ="SILVER" 
    			end
    			if color == "GRY"
    				@color ="GRAY" 
    			end
    			if color == "BLK"
    				@color ="BLACK" 
    			end
    			if color == "BLU"
    				@color ="BLUE" 
    			end
    			if color == "GLD"
    				@color ="GOLD" 
    			end
    			if color == "WHI"
    				@color ="WHITE" 
    			end
    			if color == "MAR"
    				@color ="MAROON" 
    			end
    			if color == "PLE"
    				@color ="PURPLE" 
    			end
    			if color == "GRN"
    				@color ="GREEN" 
    			end

    			if make == "CADI"
    				@make ="Cadillac" 
    			end
    			if make == "ACUR"
    				@make ="Acura" 
    			end
    			if make == "AUDI"
    				@make ="Audi" 
    			end
    			if make == "BUIC"
    				@make ="Buick" 
    			end
    			if make == "DODG"
    				@make ="Dodge" 
    			end
    			if make == "CHEV"
    				@make ="Chevy" 
    			end
    			if make == "HOND"
    				@make ="Honda" 
    			end
    			if make == "HYUN"
    				@make ="Hyundai" 
    			end
    			if make == "INFI"
    				@make ="Infiniti" 
    			end
    			if make == "LEXS"
    				@make ="Lexus" 
    			end
    			if make == "INFI"
    				@make ="Infiniti" 
    			end
    			if make == "LINC"
    				@make ="Lincoln" 
    			end
    			if make == "MAZD"
    				@make ="Mazda" 
    			end
    			if make == "LINC"
    				@make ="Lincoln" 
    			end
    			if make == "MITS"
    				@make ="Mitsubishi" 
    			end
    			if make == "NISS"
    				@make ="Nissaan" 
    			end
    			if make == "PONT"
    				@make ="Pontiac" 
    			end
    			if make == "SUZI"
    				@make ="Suzuki" 
    			end
    			if make == "TOYT"
    				@make ="Toyota" 
    			end
    			if make == "VOLK"
    				@make ="Volkswagon" 
    			end
    			if make == "VOLK"
    				@make ="Volkswagon" 
    			end
  			end


    render "queries/make"
    
  end 
 




  
end  
 
 
 
 