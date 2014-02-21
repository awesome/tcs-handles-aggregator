module THA
	class Fetcher

		def initialize(opts = {})
			@connection = opts[:connection]
			@users = opts[:user].nil? ? THA::Handles.list : [opts[:user]]
		end

		def get
			hsh = Hash.new
			@users.each do |user|
			  hsh[user] = @connection.get_all_tweets(user).collect {|tweet| tweet.text}
			end
			hsh
		end
	end
end