class UpdateProgressUserController < ApplicationController
before_action :authenticate_user!
respond_to :html
  def index
      if current_user.id != 1 then
        redirect_to root_path, notice: '管理者以外アクセスできません'end
    @progress_user = User.new
  	@user_all = User.all
  	@id = params[:id]
  end

  def input_date
  end

  def update

    redirect_to update_progress_user_index_path
  end
  
    private
    def user_params
      #params.require(:user).permit(:lecture, :practice)
      #params.permit(user: [:lecture, :practice])[:user]
    end

end
