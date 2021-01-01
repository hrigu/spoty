require 'singleton'
require 'yaml'

module Spoty
  class Config

    include Singleton
    attr_reader :spotify_client_id, :spotify_client_secret


    def initialize
      config = YAML.load_file('../../config/spoty_config.yml')
      @spotify_client_id = config['spotify']['client_id']
      @spotify_client_secret = config['spotify']['client_secret']
    end

  end
end
