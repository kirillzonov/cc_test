class User < ActiveRecord::Base
  validates :user_id, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true
end
