class Supplier < ActiveRecord::Base

has_many :locations, through: :spend
has_many :spends

validates :name, {presence: true}
validates :city, {presence: true}


end
