class Animal < ApplicationRecord
  def self.fetch
    require 'httparty'
    @response = HTTParty.get("https://axoltlapi.herokuapp.com/")
    @response = JSON.parse(@response.body) 
    Animal.create(url: @response['url'] ,facts: @response['facts'],pics_repo:@response['pics_repo'] ,api_repo: @response['api_repo']) 
  end

  def push_remote
    body = {
      body:{
        url: url,
        facts:  facts,
        pics_repo:pics_repo,
        api_repo: api_repo
      }
    }
    HTTParty.post("http://requestbin.net/r/8jsviqft",body)
  end
end


