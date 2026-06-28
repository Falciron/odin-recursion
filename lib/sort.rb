# frozen_string_literal: true

# Contains functions applicable to performing merge sorting on arrays.
module Sort
  def merge_sort(integer_array)
    return integer_array if integer_array.size <= 1

    array_half_point = (integer_array.size / 2).to_i
    first_array = merge_sort(integer_array[0...array_half_point])
    second_array = merge_sort(integer_array[array_half_point..])

    merge_sorted_arrays(first_array, second_array)
  end

  private

  def merge_sorted_arrays(first_array, second_array, joined_array = [], first_index = 0, second_index = 0)
    until first_index == first_array.size && second_index == second_array.size
      if merge_first_array_item?(first_array, first_index, second_array, second_index)
        joined_array << first_array[first_index]
        first_index += 1
      else
        joined_array << second_array[second_index]
        second_index += 1
      end
    end
    joined_array
  end

  def merge_first_array_item?(first_array, first_index, second_array, second_index)
    second_index == second_array.size ||
      (!first_array[first_index].nil? && first_array[first_index] < second_array[second_index])
  end
end
