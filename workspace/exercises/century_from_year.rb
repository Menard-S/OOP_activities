def century_from_year(year)
    if year % 100 == 0
      century = year / 100
    else
      century = (year / 100) + 1
    end
    century
  end
  
  # Examples:
  puts century_from_year(1705) # => 18
  puts century_from_year(1900) # => 19
  puts century_from_year(1601) # => 17
  puts century_from_year(2000) # => 20
  