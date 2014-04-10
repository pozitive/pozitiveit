class Blog < ActiveRecord::Base
  translates :name, :content
  validates_presence_of :name, :content
  validates_uniqueness_of :permalink
  validates_length_of :summary, :keyword, :permalink, :name, :maximum => 250

  mount_uploader :image, ImageUploader

  def to_param
    permalink
  end
end
