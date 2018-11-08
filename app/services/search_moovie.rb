require 'dotenv'
Dotenv.load

class SearchMoovie
  
    
    def initialize(film)
        @film = film
        @hash = Hash.new 
        # Tmdb::Api.key(ENV['API_KEY'])
    end

=begin
    def search 
        @hash = Hash.new 
        @movies = Tmdb::TV.find(@film)
        @movies.each do |data|

            #name = data.title 
            #release = data.release_date
            
            
        end
        return @tab
    end
=end
    def perform
        Tmdb::Api.key(ENV['API_KEY'])
        @movie = Tmdb::Movie.find(@film)
        puts @movie.class
        puts @movie[2]::title
        
        @movie.each do |movie|
            title = movie.title
            date = movie.release_date
            @hash[movie.id] = {"title": title, "date": date}
            
        end
        
        return @hash 
    end

end

#====================================
#TOkkEN_id       = ENV["TOKEN_KEY"]
    #client_id_secret = "#{client_id}:#{secret_id}"
    #encode_id_secret = "Basic #{Base64.encode64 (client_id_secret)}".delete("\n")
    #return  encode_id_secret

