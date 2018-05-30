class ProfilesController < ApplicationController
  def index # FOR NOW ONLY 
    @profiles = Profile.all 
  end 

  def show 
    @profile = Profile.find(params[:id])
  end 

  def new 
  end 

  def create 
  end 
end
