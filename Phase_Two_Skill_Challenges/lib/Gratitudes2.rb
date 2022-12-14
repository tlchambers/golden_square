class Gratitudes2
  def initialize
  @array_of_gratitudes = []
  end 

  def add(gratitude)
    if gratitude == ""
      raise "Cannot have empty string"
    end
    return @array_of_gratitudes.push(gratitude)
  end
  
  def format
    if @array_of_gratitudes.length == 0
      raise "No gratitude has been added"
    end
    format_nicely = "Be grateful for: "
    return format_nicely + @array_of_gratitudes.join(", ")
  end
  
 
end