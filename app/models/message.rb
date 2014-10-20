class Message < ActiveRecord::Base
  attr_accessor :bot
  validates :name, :email, presence: true
  
end
