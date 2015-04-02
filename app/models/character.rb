class Character < ActiveRecord::Base

  validates_presence_of :first_name
  validates_presence_of :bio

end
