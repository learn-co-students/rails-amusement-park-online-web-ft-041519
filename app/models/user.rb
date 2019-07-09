class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password

  def mood 
    @user.nausea >= @user.happiness ? 'sad' : 'happy'
  end
end
