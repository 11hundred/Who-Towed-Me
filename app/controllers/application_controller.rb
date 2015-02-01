class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  def fullname(abbrev)
  	
		if @color == "SIL"
			@color ="SILVER" 
    elsif @color == "GRY"
			@color ="GRAY" 
		elsif @color == "BLK"
			@color ="BLACK" 
		elsif @color == "BLU"
			@color ="BLUE" 
		elsif @color == "GLD"
			@color ="GOLD" 
		elsif @color == "WHI"
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
  end


end
