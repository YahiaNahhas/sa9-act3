# Problem 5: Module as Namespace

module Payments
  class Invoice
  def initialize(amount)
    @amount = amount
end

def show_info
  puts "Your Invoice amount is $#{@amount}"
  end
end

class Reciept
  def initialize(amount)
    @amount = amount
  end

def show_info
  puts "Your Reciept total is $#{@amount}"
    end
  end
end


invoice_instance = Payments::Invoice.new(600)
reciept_instance = Payments::Reciept.new(660)

invoice_instance.show_info
reciept_instance.show_info
