require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initialize
 get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
get_requester.parse_json
end 
  
  def get_response_body
  uri = URI.parse(URL)
  response = Net::HTTP.get_response_body(uri)
  response.body
end 
  def parse_jon
    examples = JSON.parse(self.get_response_body)
    examples.collect do |example|
    example
  end 
end
end 
