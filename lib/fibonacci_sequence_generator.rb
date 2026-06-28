# frozen_string_literal: true

# Contains functions applicable to generating numbers in the Fibonacci sequence.
module FibonacciSequenceGenerator
  def fibs(sequence_length)
    raise IndexError unless sequence_length.positive?

    sequence = [0, 1]
    sequence << (sequence[-1] + sequence[-2]) while sequence_length > sequence.size
    sequence[0, sequence_length]
  end

  def fibs_rec(sequence_length)
    raise IndexError unless sequence_length.positive?

    fibs_rec_aux(sequence_length, [0, 1])[0, sequence_length]
  end

  private

  def fibs_rec_aux(sequence_length, sequence)
    if sequence_length <= 2
      sequence
    else
      fibs_rec_aux(sequence_length - 1, sequence.push(sequence[-1] + sequence[-2]))
    end
  end
end

# FibExtender = Class.new.extend(FibonacciSequenceGenerator)
# p FibExtender.fibs(8)
# p FibExtender.fibs_rec(8)
