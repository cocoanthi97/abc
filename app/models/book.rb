class Book < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user
  attr_accessor :time1, :time2, :time3, :time4, :time5, :time6
  validate :validation_book

	def validation_book
		if :time == :time2
			errors.add(:time1, " 同じ教科は複数予約できません")
		end
	end	
end
