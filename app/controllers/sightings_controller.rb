class SightingsController < ApplicationController

    # def show 
    #   sighting = Sighting.find_by(id: params[:id])
    #   render json: sighting   
    # end  

    #to include bird and location information you can build a custom hash
    # def show 
    #  sighting = Sighting.find_by(id: params[:id])
    #  render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
    # end 
    
    #using include to indicate what models you want to rest
    def show 
     sighting = Sighting.find_by(id: params[:id])
     render json: sighting, include: [:bird, :location]
    end  
    
    def index 
    sightings = Sighting.all
    render json: sightings.to_json(include: [:bird, :location])
    end    
end
