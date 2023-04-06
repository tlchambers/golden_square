require 'json'

class CatFacts
  def initialize(request)
    @request = request
  end

  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    text_response = @request.get("https://catfact.ninja/fact")
    return JSON.parse(text_response)
  end
end

# Usage
# # =====
# require 'net/http'
# activity_suggester = CatFacts.new(Net::HTTP)
# p activity_suggester.provide 
# p activity_suggester.provide

