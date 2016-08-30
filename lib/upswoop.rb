require "upswoop/version"
require 'typhoeus'
require 'pp'

module Upswoop
  BASE_URL = "http://www.upswoop.com/api/v0"
  TESTING = false
  DEFAULT_ATTRS = {
    type: 'activity',
    directions: nil, 
    source: 'webapp',
    happened_at: nil
  }

  class << self
    def post(narrative, attrs={})
      attrs = DEFAULT_ATTRS.merge(attrs).merge(
        narrative: narrative,
      )

      request = Typhoeus::Request.new(
        BASE_URL+"/events",
        method: :post,
        params: attrs,
      )

      if TESTING
        request.on_complete do |response|
          pp response
        end
      end

      request.run
    end
  end
end
