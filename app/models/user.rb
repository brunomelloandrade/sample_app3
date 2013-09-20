# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name

  #Validar email com erex
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: {case_sensitive: fase}
  validates :name, presence: true
end
