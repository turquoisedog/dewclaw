class ProfilesController < ApplicationController
  def show
    @user = User.find_by_handle! params[:handle]
  end

  def edit
    @user = set_current_user
  end

  def update
    @user = set_current_user

    if @user.update(profile_params)
      redirect_to show_profile_path(@current_user.handle)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_current_user
    current_user
  end

  def profile_params
    params.require(:user).permit(:display_name, :handle, :pronouns, :location)
  end
end
