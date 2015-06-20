class Location < ActiveRecord::Base

has_many :suppliers, through: :spend
has_many :spends

validates :name, {presence: true}
validates :city, {presence: true}




end
