# frozen_string_literal: true

require_relative "barcode/version"

module Barcode
  class Error < StandardError; end
  # Your code goes here...
  class Barcode
    attr_reader :incomplete_barcode_number
    def initialize(incomplete_barcode_number)
      @incomplete_barcode_number  = incomplete_barcode_number
    end

    def last_number

    end
  end
end
