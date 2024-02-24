require_relative 'payment'

RSpec.describe Payments::Invoice do
  describe "#initialize" do
    it "creates an Invoice instance with the given amount" do
      invoice = Payments::Invoice.new(500)
      expect(invoice.instance_variable_get(:@amount)).to eq(500)
    end
  end

  describe "#show_info" do
    it "displays the correct information for Invoice" do
      invoice = Payments::Invoice.new(500)
      expect { invoice.show_info }.to output("Your Invoice amount is $500\n").to_stdout
    end
  end
end

RSpec.describe Payments::Receipt do
  describe "#initialize" do
    it "creates a Receipt instance with the given amount" do
      receipt = Payments::Receipt.new(600)
      expect(receipt.instance_variable_get(:@amount)).to eq(600)
    end
  end

  describe "#show_info" do
    it "displays the correct information for Receipt" do
      receipt = Payments::Receipt.new(600)
      expect { receipt.show_info }.to output("Your Receipt total is $600\n").to_stdout
    end
  end
end
