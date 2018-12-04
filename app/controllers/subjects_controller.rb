class SubjectsController < ApplicationController
  def new
  @subject = Subject.new
  end

  def create
    #   params.require(:subject).permit(:title, :discription)
  @subject = Subject.new(params.require(:subject).permit(:title, :discription))
  @subject.save
  end

  def update
  end
end
