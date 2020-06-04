class Customer
  @@all_customers = []
  def initialize(name, age)
    @name = name
    @age = age
  end

  def self.all_customers
    @@all_customers
  end

  
end