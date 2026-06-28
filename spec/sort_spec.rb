# Copyright (c) 2026 Aaron Mattson
# frozen_string_literal: true

require_relative '../lib/sort'

RSpec.configure do |c|
  c.include(Sort)
end

describe(Sort) do
  describe '#merge_sort' do
    context 'when receiving an empty array' do
      it 'produces a matching empty array' do
        expect(merge_sort([])).to eql([])
      end
    end

    context 'when receiving an array with one number' do
      it 'produces a matching array with that same number' do
        expect(merge_sort([73])).to eql([73])
      end
    end

    context 'when receiving a pre-sorted array' do
      it 'produces a matching, sorted array' do
        expect(merge_sort([1, 2, 3, 4, 5])).to eql([1, 2, 3, 4, 5])
      end
    end

    context 'when receiving an unsorted array with duplicate integers' do
      it 'produces an array with all integers sorted by ascending value' do
        expect(merge_sort([3, 2, 1, 13, 8, 5, 0, 1])).to eql([0, 1, 1, 2, 3, 5, 8, 13])
      end
    end

    context 'when receiving an unsorted array without duplicate integers' do
      it 'produces an array with all integers sorted by ascending value' do
        expect(merge_sort([105, 79, 100, 110])).to eql([79, 100, 105, 110])
      end
    end
  end
end
