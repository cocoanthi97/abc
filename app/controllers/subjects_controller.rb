class SubjectsController < ApplicationController
before_action :authenticate_user!

  def new
      if current_user.id != 1 then
        redirect_to root_path, notice: '管理者以外アクセスできません'end
  @subject = Subject.new
  end

  def create
    #   params.require(:subject).permit(:title, :discription)
  @subject = Subject.new(params.require(:subject).permit(:title, :discription))
  @subject.save
  end

  def update
  end
  
  def destroy
    @subjects =  Subject.find(params[:id])
	@subjects.destroy
    redirect_to make_subjects_show_path,  notice: '削除しました。'
  end
end