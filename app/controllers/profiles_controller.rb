class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(profile_params)

      if @profile.save
        redirect_to profiles_path
      else
        render :new
      end
  end

  def update
    @profile = Profile.find(params[:id])

      if @profile.update(profile_params)
        redirect_to profiles_path
      else
        render :edit
      end
  end

  def destroy
    Profile.find(params[:id]).destroy
    redirect_to profiles_path
  end

  private

  def profile_params
    params.require(:profile).permit(:name_first, :last_name, :age, :hair_color, :eye_color, :alive)
  end
end
