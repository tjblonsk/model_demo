class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  validates_presence_of :first_name, :last_name

  def gender
    self[:gender] || 'Not specified'
  end

end
