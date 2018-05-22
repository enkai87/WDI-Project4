class SearchController < ApplicationController

	def search
  	search = params["a"]

    if search.nil? == false

	    require 'net/http'

		url = URI.parse('http://api.tvmaze.com/shows/:'+search)
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(req)
		}
		
		puts res.body

		@shows = JSON.parse(res.body)

	else
		@shows = []
	end

  end  
end
