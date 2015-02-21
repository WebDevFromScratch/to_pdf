class ProfilesController < ApplicationController
  def show
    @profile = set_profile

    respond_to do |format|
      format.html
      format.pdf do
        render  pdf: "#{@profile.id}.pdf",
                template: "resume_templates/#{params[:template]}.pdf.haml"
      end
    end
  end

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

  def edit
    @profile = set_profile
  end

  def update
    @profile = set_profile

    if @profile.update(profile_params)
      redirect_to authenticated_root_path, notice: "Update successful!"
    else
      # show errors
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :about)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
