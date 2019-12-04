$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # Be sure to return the result at the end!
  
  result = {
    
  }
  
  for each in nds do
    tot = []
    for movie in each[:movies] do
      tot << movie[:worldwide_gross]
    end
    result[each[:name]] = tot.sum
  end
  
  result
  
end

pp directors_database

# [director][:movies][:worldwide_gross]