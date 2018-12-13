class Book < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user
   attr_accessor :time1, :time2, :time3, :time4, :time5, :time6
end
