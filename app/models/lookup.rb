def self.search(search, id)
 if search
   where(['name ZIPCODE ?', "%#{search}%"])
 else
  scoped
 end
end