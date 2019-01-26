class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    attr_accessor :progress_user
  has_many :books
  
  has_many :subject_passed_subjects
  has_many :passed_subjects,  source: :subject,   :through => :subject_passed_subjects
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
