class ProfilesController < ApplicationController
  def index # FOR NOW ONLY 
    @profiles = Profile.all 
  end 

  def show 
    @profile = Profile.find(params[:id])
  end 

  def new 
    @profile = Profile.new
  end 

  def create 
    byebug
  end 

  private
    def profile_params
      params.require(:profile).permit(:name, :email, :password, :password_confirmation)
    end
end
