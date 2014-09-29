require 'faraday'
require 'faraday_middleware'
require 'patron'
require 'hashie'
require 'yaml'

require 'wikidata/config'

module Wikidata
  class << self
    def configure &block
      Config.configure &block
    end

    def client_options
      Config.client_options
    end

    def settings
      Config.settings
    end

    def mapping
      Config.mapping
    end
  end
end

require 'wikidata/client'
require 'wikidata/property'
require 'wikidata/property/base'
require 'wikidata/property/string'
require 'wikidata/property/time'
require 'wikidata/property/url'
require 'wikidata/property/globe_coordinate'
require 'wikidata/entity'
require 'wikidata/item'
require 'wikidata/response'
require 'wikidata/search_response'
