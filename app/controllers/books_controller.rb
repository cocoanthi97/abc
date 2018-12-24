class BooksController < ApplicationController
  def index
  end

 # def new
  #  @subject = Subject.new
 # end
 
    def input_date
          
    end

	def input_time
	    @book = Book.new(params.require(:book).permit(:date))
	    @time_table_all = TimeTableWeek.find(1).time_table_days[@book.date.wday].time_table_times
	    @time_table = []
	    @time_table[0]
	    i = 0 #何時限
	    
	    @time_table_all.each do |tt| #全選択股　総当たり
	    	@time_table << [] #フィルター後の配列
	    	tt.each do |sub|
	  	    	if	current_user.lecture == sub.lecture then
	  				if 	 (current_user.lecture == sub.lecture && current_user.practice == sub.practice) || (current_user.lecture == sub.lecture && sub.practice == -1) then
	  					@time_table[i] << sub
	  				end
	  			elsif  current_user.practice == sub.practice then
	  					@time_table[i] << sub
	  		    end
	  		
	    	   end
	    		i += 1
	       end
	    
    #	@subs = ['学科1','学科2','学科3','学科4','学科5','学科6']
	end
	
  def create
	create_book1_params =  params.require(:book).permit(:date)
	create_book1_params[:time] = 1
	create_book1_params[:subject] = Subject.find(params[:book][:time1])
	@book1 = Book.new(create_book1_params)
	
	create_book2_params =  params.require(:book).permit(:date)
	create_book2_params[:time] = 2
	create_book2_params[:subject] = Subject.find(params[:book][:time2])
	@book2 = Book.new(create_book2_params)
	
	create_book3_params =  params.require(:book).permit(:date)
	create_book3_params[:time] = 3
	create_book3_params[:subject] = Subject.find(params[:book][:time3])
	@book3 = Book.new(create_book3_params)
	
	create_book4_params =  params.require(:book).permit(:date)
	create_book4_params[:time] = 4
	create_book4_params[:subject] = Subject.find(params[:book][:time4])
	@book4 = Book.new(create_book4_params)
	
			create_book5_params =  params.require(:book).permit(:date)
	create_book5_params[:time] = 5
	create_book5_params[:subject] = Subject.find(params[:book][:time5])
	@book5 = Book.new(create_book5_params)
	
	@book1.save
	@book2.save
	@book3.save
	@book4.save
	@book5.save
	redirect_to root_path
					

  end

  def update
  end

  def destroy
  end
end
