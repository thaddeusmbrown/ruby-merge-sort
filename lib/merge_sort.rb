require 'pry-byebug'

def merge_sort(array)
  answer = []
  length = array.length.to_f
  if length > 2

    left_half = merge_sort(array.first((length/2).ceil))
    right_half = merge_sort(array.last((length/2).floor))
    while left_half.length.positive? || right_half.length.positive?
      if left_half.length.zero?
        answer.push(right_half.shift)
      elsif right_half.length.zero? || left_half[0] < right_half[0]
        answer.push(left_half.shift)
      else
        answer.push(right_half.shift)
      end
    end
    answer = answer.flatten
  elsif length == 2
    a = array[0]
    b = array[1]
    answer.push(a, b) if a <= b
    answer.push(b, a) if b < a
  else
    answer.push(array[0])
  end
  answer
end
