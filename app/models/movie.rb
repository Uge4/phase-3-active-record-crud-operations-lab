class Movie < ActiveRecord::Base

    def self.create_with_title(title) 
        Movie.create(title: title)
    end


    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end

    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end
   
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(title)
        self.all.each do |movie| 
            movie.update_column("title", title)
        end
    end

    def self.delete_by_id(id)
        self.delete(id)
    end

    def self.delete_all_movies
       self.delete_all
    end

end