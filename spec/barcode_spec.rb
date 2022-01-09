# frozen_string_literal: true

RSpec.describe Barcode::Barcode do
  subject(:barcode_numbers){described_class.new(first_barcode_numbers)}
  subject(:barcode_strings){described_class.new(first_barcode_strings)}

  let!(:first_barcode_numbers){978014300723}
  let!(:first_barcode_strings){'978014300723'}

  it "has a version number" do
    expect(Barcode::VERSION).not_to be nil
  end

  describe '#initialize' do
    it 'has imcomplete barcode number' do
      expect(barcode_numbers.incomplete_barcode_number).to eq(first_barcode_numbers)
    end
  end

  describe '#last_digit' do
    context 'when input numbers' do
      it "is 4" do
        expect(barcode_numbers.last_digit).to eq(4)
      end
    end

    context 'when input string' do
      it "is 4" do
        expect(barcode_numbers.last_digit).to eq(4)
      end
    end
  end
  
  describe 'full_barcode' do
    context 'when input numbers' do
      it 'is 9780143007234' do
        expect(barcode_numbers.full_barcode).to eq(9780143007234)
      end
    end

    context 'when input string' do
      it 'is 9780143007234' do
        expect(barcode_strings.full_barcode).to eq(9780143007234)
      end
    end
  end
end
