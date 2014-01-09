class Page < ActiveRecord::Base
  translates :name, :content
  validates_presence_of :name, :content
  validates_uniqueness_of :permalink
  
  def to_param
    permalink
  end
end
