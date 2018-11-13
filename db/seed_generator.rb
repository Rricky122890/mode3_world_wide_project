require 'rest-client'
require 'json'
#
# url = "https://restcountries.eu/rest/v2/all"
#
# def import_data(url)
#   string = RestClient.get(url)
#   hash = JSON.parse(string)
# end



def seed_maker()
origin_address = 'https://restcountries.eu/rest/v2/all'
origin_response = RestClient::Request.execute(method: :get, url: origin_address)
# origin_response = RestClient.get('https://restcountries.eu/rest/v2/all')
returned_origin = JSON.parse(origin_response)
puts returned_origin
puts "helen is a beast"


counter = 0

while counter < returned_origin.length do



@name = returned_origin[counter]["name"]
@native_name = returned_origin[counter]["nativeName"]
@population = returned_origin[counter]["population"]
@language = returned_origin[counter]["languages"][0]["name"]
@currency_name = returned_origin[counter]["currencies"][0]["name"]
@currency_symbol = returned_origin[counter]["currencies"][0]["symbol"]
@location_lat = returned_origin[counter]["latlng"][0]
@location_lng = returned_origin[counter]["latlng"][1]
@flag = returned_origin[counter]["flag"]
@capital = returned_origin[counter]["capital"]
# @country_abrv = returned_origin[counter]["code"]

@country = Country.create({name: @name, native_name: @native_name, population: @population,
  language: @language, currency_name: @currency_name, currency_symbol: @currency_symbol, location_lat: @location_lat,
  location_lng: @location_lng, flag: @flag, capital: @capital})

  # @country = Country.create(name: @name)
counter += 1

end

end
