class Animal < ApplicationRecord
  def self.fetch
    require 'httparty'
    @response = HTTParty.get("https://axoltlapi.herokuapp.com/")
    @response = JSON.parse(@response.body) 
    Animal.create(url: @response['url'] ,facts: @response['facts'],pics_repo:@response['pics_repo'] ,api_repo: @response['api_repo'])
  end
  def self.push_remote
    require 'httparty'
    @response = HTTParty.get("https://axoltlapi.herokuapp.com/")
    result = HTTParty.post('http://requestbin.net/r/6cy069o6',@response)
  end
end


