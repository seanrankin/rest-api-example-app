class CountriesController < ApplicationController
  include HTTParty

  def index
    @response = HTTParty.get("http://restcountries.eu/rest/v1/all")
    @headers = @response.headers
    @countries = JSON.parse(@response.body)

    # respond_to do |format|
    #   format.json { render :json => JSON.parse(@countries) }
    #   format.html { render "index.html.erb" }
    # end
  end

  def show
    @response = HTTParty.get("https://restcountries-v1.p.mashape.com/alpha/#{params[:id]}", headers: {"X-Mashape-Key" => "XzdQy5da75mshpeoPXPBZynbYln5p1kf1LMjsnl8OgeiUreI0E"})
    # @response = HTTParty.post("https://restcountries-v1.p.mashape.com/alpha/#{params[:id]}", body: {"type" => "student", user: {name: "Bob"}}.to_json, headers: {"X-Mashape-Key" => "XzdQy5da75mshpeoPXPBZynbYln5p1kf1LMjsnl8OgeiUreI0E"})
    # @headers = @response.headers
    @country = JSON.parse(@response.body)

    # respond_to do |format|
    #   format.json { render :json => JSON.parse(@country) }
    #   format.html { render "show.html.erb" }
    # end
  end
end
