require 'net/http'
require 'uri'
require 'json'

class RackToBasics
  class Horoscope
    def initialize(bdate)
      @bdate = bdate
    end

    def todays_prediction
      uri = URI("https://aztro.sameerkumar.website/?sign=#{sign}&day=today")

      req = Net::HTTP::Post.new(uri)

      res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(req)
      end

      data = JSON.parse(res.body)
      data["description"]
    end

    def sign
      case @bdate.mon
      when 1
        @bdate.day <= 19 ? 'capricorn' : 'aquarius'
      when 2
        @bdate.day <= 18 ? 'aquarius' : 'pisces'
      when 3
        @bdate.day <= 20 ? 'pisces' : 'aries'
      when 4
        @bdate.day <= 19 ? 'aries' : 'taurus'
      when 5
        @bdate.day <= 20 ? 'taurus' : 'gemini'
      when 6
        @bdate.day <= 21 ? 'gemini' : 'cancer'
      when 7
        @bdate.day <= 22 ? 'cancer' : 'leo'
      when 8
        @bdate.day <= 22 ? 'leo' : 'virgo'
      when 9
        @bdate.day <= 22 ? 'virgo' : 'libra'
      when 10
        @bdate.day <= 22 ? 'libra' : 'scorpio'
      when 11
        @bdate.day <= 22 ? 'scorpio' : 'sagittarius'
      when 12
        @bdate.day <= 21 ? 'sagittarius' : 'capricorn'
      else
        raise 'invalid date'
      end
    end
  end
end
