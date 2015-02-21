class HomeController < ApplicationController
  def index
    if current_account.has_profile?
      redirect_to profile_path(current_profile)
    end
  end
end
