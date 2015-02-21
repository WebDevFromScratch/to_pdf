class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.account = current_account

    if @profile.save
      redirect_to authenticated_root_path, notice: "Thanks! Now you can use our app's features!"
    else
      # show errors
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name)
  end
end
