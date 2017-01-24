class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :courses

  after_create :send_welcomemsg
  def send_welcomemsg
    UserMailer.welcome_email(self).deliver_now
    
  end
end
