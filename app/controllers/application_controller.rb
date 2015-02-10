class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  def fullname(abbrev)
  	
		if @color == "SIL"
			@color ="silver" 
    elsif @color == "BGE"
			@color ="beige" 
    elsif @color == "GRY"
			@color ="gray" 
		elsif @color == "BLK"
			@color ="black" 
		elsif @color == "BRO"
			@color ="brown" 
		elsif @color == "BLU"
			@color ="blue" 
		elsif @color == "GLD"
			@color ="gold" 
		elsif @color == "WHI"
			@color ="white" 
		elsif @color == "MAR"
			@color ="maroon" 
		elsif @color == "PLE"
			@color ="purple" 
		elsif @color == "GRN"
			@color ="green" 
		end
    
		if @make == "CADI"
			@make ="Cadillac" 
		elsif @make == "ACUR"
			@make ="Acura" 
		elsif @make == "AUDI"
			@make ="Audi" 
		elsif @make == "BUIC"
			@make ="Buick" 
		elsif @make == "DODG"
			@make ="Dodge" 
		elsif @make == "CHEV"
			@make ="Chevy" 
		elsif @make == "HOND"
			@make ="Honda" 
		elsif @make == "HYUN"
			@make ="Hyundai" 
		elsif @make == "INFI"
			@make ="Infiniti" 
		elsif @make == "LEXS"
			@make ="Lexus" 
		elsif @make == "INFI"
			@make ="Infiniti" 
		elsif @make == "LINC"
			@make ="Lincoln" 
		elsif @make == "MAZD"
			@make ="Mazda" 
		elsif @make == "LINC"
			@make ="Lincoln" 
		elsif @make == "MITS"
			@make ="Mitsubishi" 
		elsif @make == "NISS"
			@make ="Nissaan" 
		elsif @make == "PONT"
			@make ="Pontiac" 
		elsif @make == "SUZI"
			@make ="Suzuki" 
		elsif @make == "TOYT"
			@make ="Toyota" 
		elsif @make == "VOLK"
			@make ="Volkswagon" 
		elsif @make == "VOLK"
			@make ="Volkswagon" 
		end
  end


end
