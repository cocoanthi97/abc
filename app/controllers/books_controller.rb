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
	    @time_table = TimeTableWeek.find(1).time_table_days[0].time_table_times
    #	@subs = ['学科1','学科2','学科3','学科4','学科5','学科6']
	end
	
  def create
	@book1 =  Book.new(params.require(:book).permit(:date))
	@book1[:time] = 1
	@book1[:subject] = params[:book][:time1]
	
	@book2  =  Book.new(params.require(:book).permit(:date))
	@book2[:time] = 2
	@book2[:subject] = params[:book][:time2]
	
	@book3   =  Book.new(params.require(:book).permit(:date))
	@book3[:time] = 3
	@book3[:subject] = params[:book][:time3]
	
	@book4  =  Book.new(params.require(:book).permit(:date))
	@book4[:time] = 4
	@book4[:subject] = params[:book][:time4]
	
	@book5  =  Book.new(params.require(:book).permit(:date))
	@book5[:time] = 5
	@book5[:subject] = params[:book][:time5]


	#@book = Book.new(params.require(:book).permit(:date, :time, :kind))
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
