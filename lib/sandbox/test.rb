require_relative '../spoty'
require 'rspotify'

client_id = Spoty::Config.instance.spotify_client_id
client_secret = Spoty::Config.instance.spotify_client_secret

RSpotify.authenticate(client_id, client_secret)

artists = RSpotify::Artist.search('Arctic Monkeys')

arctic_monkeys = artists.first
puts arctic_monkeys.popularity      #=> 74
puts arctic_monkeys.genres          #=> ["Alternative Pop/Rock", "Indie", ...]
puts arctic_monkeys.top_tracks(:US) #=> (Track array)
