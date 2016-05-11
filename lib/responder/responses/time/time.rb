# frozen_string_literal: true
require_relative '../base'
module Responder
  class Time < Base
    KEYWORD = 'time'

    keyword KEYWORD, info: 'Just returns the time'

    def initialize(info)
      @info = info
    end

    def title
      KEYWORD
    end

    def contents
      {
       time: ::Time.now
      }
    end

    def refresh_rate
      1
    end

    def refresh_url
      "api/?q=time"
    end
  end
end
