require 'net/http'
require 'json'

class SteamProfile
  def initialize(api_key, steam_id)
    @api_key = api_key
    @steam_id = steam_id
  end

  def fetch_profile_data
    url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=#{@api_key}&steamids=#{@steam_id}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    profile = data['response']['players'][0]

    @name = profile['personaname']
    @location = profile['loccountrycode']
    @bio = profile['profileurl']
  end

  def display_profile
    puts "⭐️ Nome: #{@name}"
    puts "📍 Localização: #{@location}"
    puts "📚 Biografia: #{@bio}"
  end
end

api_key = ''
steam_id = ''

profile = SteamProfile.new(api_key, steam_id)
profile.fetch_profile_data
profile.display_profile
