class Committee < ActiveRecord::Base
  belongs_to :director, :class_name => 'User'
  has_many :members, :class_name => 'User'

  attr_accessible :name, :description, :director_id, :email
end
