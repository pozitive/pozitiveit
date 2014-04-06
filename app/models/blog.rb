class Blog < ActiveRecord::Base
  translates :name, :content
  validates_presence_of :name, :content
  validates_uniqueness_of :permalink
  validates_length_of :summary, :keyword, :permalink, :image, :name, :maximum => 250

  def to_param
    permalink
  end
end
