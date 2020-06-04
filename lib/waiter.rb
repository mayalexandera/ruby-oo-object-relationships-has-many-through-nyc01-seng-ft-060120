require_relative './customer.rb'
require_relative './meal.rb'

class Waiter
  @@all = []
  def initialize(name, yoe)
    @name = name
    @yoe = yoe
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, tip, total)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end

  def best_tipper
    sorted = Meal.all.sort_by {|meal| meal.tip }
    sorted.last.customer
  end

end