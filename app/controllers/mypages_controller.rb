class MypagesController < ApplicationController
before_action :authenticate_user!
  def show
  	@user = User.find(params[:id])
	 	if @user.id != current_user.id  then
        	redirect_to root_path, notice: '不正なアクセスです。' end
  end
end
