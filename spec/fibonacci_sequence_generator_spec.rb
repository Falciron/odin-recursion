# Copyright (c) 2026 Aaron Mattson
# frozen_string_literal: true

require_relative '../lib/fibonacci_sequence_generator'

RSpec.configure do |c|
  c.include(FibonacciSequenceGenerator)
end

describe(FibonacciSequenceGenerator) do
  describe '#fibs' do
    context 'when receiving an input of 8' do
      it 'produces an array with the correct eight numbers' do
        expect(fibs(8)).to eql([0, 1, 1, 2, 3, 5, 8, 13])
      end
    end

    context 'when receiving an input of 1' do
      it 'produces an array with the correct eight numbers' do
        expect(fibs(1)).to eql([0])
      end
    end

    context 'when receiving an input of 11' do
      it 'produces an array with the correct eight numbers' do
        expect(fibs(11)).to eql([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55])
      end
    end
  end

  describe '#fibs_rec' do
    context 'when receiving an input of 8' do
      it 'produces an array with the correct eight numbers' do
        expect(fibs_rec(8)).to eql([0, 1, 1, 2, 3, 5, 8, 13])
      end
    end

    context 'when receiving an input of 1' do
      it 'produces an array with the correct eight numbers' do
        expect(fibs_rec(1)).to eql([0])
      end
    end

    context 'when receiving an input of 11' do
      it 'produces an array with the correct eight numbers' do
        expect(fibs_rec(11)).to eql([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55])
      end
    end
  end
end
