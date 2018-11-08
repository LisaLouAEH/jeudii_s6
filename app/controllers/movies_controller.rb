class MoviesController < ApplicationController

    def new
       
    end

    def show 
        puts "########################################"
        tab =[]
        @value = SearchMoovie.new(params[:movie_name]).perform
        puts "########################################"
        puts "la class --> #{@value.inspect}"
        puts "#####"
        @value.each do |id, hash| 
            puts hash[:title]
            puts hash[:date]
            end
        puts "######"
    end
    

end
