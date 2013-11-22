class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	validates :role, :inclusion => {:in => ['teacher', 'student']}

	def admin?
		role == 'teacher'
	end

	def student?
		role == 'student'
	end
end
