class Spend < ActiveRecord::Base

belongs_to :location
belongs_to :supplier

  def self.total(entity)
    sum = 0
    entity.spends.each {|spend| sum += spend.amount}
    sum
  end

end
