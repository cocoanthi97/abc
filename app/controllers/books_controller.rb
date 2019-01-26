class BooksController < ApplicationController
before_action :authenticate_user!
    def input_date
    end
    
	def input_time
	    @book = Book.new(params.require(:book).permit(:date))
	    @time_table_all = TimeTableWeek.find(1).time_table_days[@book.date.wday].time_table_times
	    @time_table = []
	    @time_table[0]
	    i = 0 #何時限
	    
	    @time_table_all.each do |tt| #全選択股　総当たり
	   		puts "#######through1########"
	    	@time_table << [] #フィルター後の配列
	 
	 		tt.subjects.each do |sub| #部分選択肢　総当たり

	 			if sub.lecture == sub.practice then	 		#nilのデータ表示
	 				@time_table[i] << sub
	 			end
	 			puts "#######through2########"
	  				if (current_user.lecture == sub.lecture) || (current_user.practice == sub.practice) then #段階に合わせて教科を表示
	  					@time_table[i] << sub
	  					puts "#######through3########"
	  				elsif (current_user.practice + 1 ==  sub.practice)  && (sub.lecture < 0 || sub.practice < 0) then #技能のフィルター・仮免、本免のフィルター
	  					@time_table[i] << sub
	  					puts "#######through4########"
	  				end
	  			end
   			i=i+1 #2..5時限目へ
   		end
	end
	
  def create
  	@check_book = current_user
  	@sub = [Subject.find(params[:book][:time1]), Subject.find(params[:book][:time2]), Subject.find(params[:book][:time3]), Subject.find(params[:book][:time4]), Subject.find(params[:book][:time5])]
  	
	create_book1_params =  params.require(:book).permit(:date)				 #Bookモデルのdateをrequire
	create_book1_params[:time] = 1																 #Bookモデルのtimeに時限目を代入
	create_book1_params[:subject] = Subject.find(params[:book][:time1])	 #BookモデルのsubjectにSubjectモデルのbook,time1を取得
	create_book1_params[:user] = current_user											 #ログインしてるユーザを取得
	@book1 = Book.new(create_book1_params) 									 	 #上記をインスタンス

	create_book2_params =  params.require(:book).permit(:date)
	create_book2_params[:time] = 2
	create_book2_params[:subject] = Subject.find(params[:book][:time2])
	create_book2_params[:user] = current_user
	@book2 = Book.new(create_book2_params)
	
	create_book3_params =  params.require(:book).permit(:date)
	create_book3_params[:time] = 3
	create_book3_params[:subject] = Subject.find(params[:book][:time3])
	create_book3_params[:user] = current_user
	@book3 = Book.new(create_book3_params)
	
	create_book4_params =  params.require(:book).permit(:date)
	create_book4_params[:time] = 4
	create_book4_params[:subject] = Subject.find(params[:book][:time4])
	create_book4_params[:user] = current_user
	@book4 = Book.new(create_book4_params)
	
	create_book5_params =  params.require(:book).permit(:date)
	create_book5_params[:time] = 5
	create_book5_params[:subject] = Subject.find(params[:book][:time5])
	create_book5_params[:user] = current_user
	@book5 = Book.new(create_book5_params)
	
	@time1 = create_book1_params[:time] = 1
	@time5 = create_book1_params[:time] = 5
	
	@sub.each do |check|
		if (@check_book.practice == check.practice) && (@check_book.lecture == check.lecture) then #ユーザの実地進度と予約された実地の受講制限が一致した場合
			check.practice = check.practice + 1 #次の実地も予約できるようにする
		elsif  (@check_book.practice != check.practice) && (check.practice != 99) && (check.practice != -1) #一致しなかった場合
			@book = Book.new(params.require(:book).permit(:date))
			@book.errors.add(:time, "")
			
			#以下input_time引用
	   		 @time_table_all = TimeTableWeek.find(1).time_table_days[@book.date.wday].time_table_times
	   		 @time_table = []
	    	 @time_table[0]
	  		  i = 0 #何時限
	    
	  		 	@time_table_all.each do |tt| #全選択股　総当たり
	   				puts "#######through1########"
	    			@time_table << [] #フィルター後の配列
	 
	 					tt.subjects.each do |sub| #部分選択肢　総当たり

	 						if sub.lecture == sub.practice then	 		#nilのデータ表示
	 						@time_table[i] << sub
	 						end
	 					puts "#######through2########"
	  							if (current_user.lecture == sub.lecture) || (current_user.practice == sub.practice) then #段階に合わせて教科を表示
	  								@time_table[i] << sub
	  								puts "#######through3########"
	  								elsif (current_user.practice + 1 ==  sub.practice)  && (sub.lecture < 0 || sub.practice < 0) then #技能のフィルター・仮免、本免のフィルター
	  								@time_table[i] << sub
	  								puts "#######through4########"
	  							end
	  					end
   				i=i+1 #2..5時限目へ
   				end
   			#以上input_time引用
			render :input_time
			return
		end
	end
	@book1.save
	@book2.save
	@book3.save
	@book4.save
	@book5.save
 	 redirect_to mypage_path(current_user)	,  notice: '予約が完了しました。'	
  end

  def update
  end
  def destroy
  	@book =  Book.find(params[:id])
	@book.destroy
    redirect_to confirm_path(current_user),  notice: 'キャンセルしました。'
    end
end
