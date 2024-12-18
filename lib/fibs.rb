# frozen_string_literal: true

def fibs(num, sequence = [0, 1], index = 1)
  until index == num
    sequence << (sequence[-2] + sequence[-1])

    index += 1
  end
  sequence
end

def fibs_rec(num, sequence = [0, 1], index = 1)
  return if index == num

  sequence << (sequence[-2] + sequence[-1])
  index += 1
  fibs(num, sequence, index)
end
# p fibs(20)
# p fibs_rec(20)
