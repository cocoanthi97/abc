class MakeSubjectsController < ApplicationController
before_action :authenticate_user!
  def show
      if current_user.id != 1 then
        redirect_to root_path, notice: '管理者以外アクセスできません' end
    @book = Book.all
   	@week = TimeTableWeek.find(1).time_table_days
   	@count_week = 0
   	@count_time = 0
    @weeks = ["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"] 
    @times = ["１時間目","２時間目","３時間目","４時間目","５時間目",] 
    #@week = TimeTableWeek.find(1)
    #@time_table_all = 
    #[@week.time_table_days[0].time_table_times, @week.time_table_days[1].time_table_times, @week.time_table_days[2].time_table_times, @week.time_table_days[3].time_table_times, @week.time_table_days[4].time_table_times]
    
   end

  def create
    @subject = Subject.new
  end

  def destroy
    @book =  Book.find(params[:id])
	@book.destroy
    redirect_to confirm_path(current_user),  notice: '削除しました。'
  end
end
