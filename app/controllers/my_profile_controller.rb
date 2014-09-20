class MyProfileController < ApplicationController
  def update
    if current_user.update_attributes(my_profile_params)
      redirect_to my_profile_path, notice: t('common.update_success')
    else
      render :edit
    end
  end

  private

  def my_profile_params
    params.require(:user).permit(:nickname)
  end
end
