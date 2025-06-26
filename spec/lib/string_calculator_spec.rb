require 'rails_helper'
require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for empty string" do
      expect(described_class.add("")).to eq(0)
    end

    it "returns the number itself for single number" do
      expect(described_class.add("1")).to eq(1)
    end

    it "returns sum of two numbers" do
      expect(described_class.add("1,2")).to eq(3)
    end

    it "handles newlines as delimiter" do
      expect(described_class.add("1\n2,3")).to eq(6)
    end

    it "raises error on negative numbers" do
      expect { described_class.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2,-3")
    end
  end
end
