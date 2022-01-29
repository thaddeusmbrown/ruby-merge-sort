require 'spec_helper'
require_relative '../lib/merge_sort'

RSpec.describe 'MergeSort' do
  describe 'sorts a list of numbers with recursive merge sort strategy' do
    it 'returns the original array if it is has length of one' do
      array = [1]
      result = array.sort
      expect(merge_sort(array)).to eq(result)
    end

    it 'returns the original list if it is already sorted' do
      array = [0, 1]
      result = array.sort
      expect(merge_sort(array)).to eq(result)
    end

    it 'sorts a pair of elements correctly' do
      array = [1, 0]
      result = array.sort
      expect(merge_sort(array)).to eq(result)
    end

    it 'sorts the worst case (reverse-sorted) array correctly' do
      array = [3, 2, 1, 0]
      result = array.sort
      expect(merge_sort(array)).to eq(result)
    end

    it 'sorts a mixed array with an odd number of elements' do
      array = [0, 1, 3, 4, 2, 5, 8, 6, 7]
      result = array.sort
      expect(merge_sort(array)).to eq(result)
    end

    it 'sorts a large, random array with an odd number of elements that may have replicates' do
      array = Array.new(999) { rand(0..99) }
      result = array.sort
      expect(merge_sort(array)).to eq(result)
    end
  end
end
