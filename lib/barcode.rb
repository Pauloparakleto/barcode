# frozen_string_literal: true

require_relative "barcode/version"

module Barcode
  class Error < StandardError; end
  # Your code goes here...
  class Barcode
    attr_accessor :incomplete_barcode_number
    def initialize(incomplete_barcode_number)
      @incomplete_barcode_number  = incomplete_barcode_number
    end

    def last_digit
      normalized_digits = incomplete_barcode_number.to_s.split(//).map{|character| character.to_i} 
      normalized_digits.collect!.with_index do |number, index|
        if index.even?
          number
        else
          number*3
        end
      end

      10 - normalized_digits.sum%10
    end
  end
end
