# frozen_string_literal: true

module Sample
  class FizzBuzz

    def initialize(count)
      @count = count.present? ? count.to_i : 100
    end

    def execute
      1.upto(@count) do |i|
        puts "#{i}: #{fizz_buzz i}"
      end
    end

    private

    def fizz_buzz(i)
      return :FizzBuzz if (i % 15).zero?
      return :Fizz if (i % 3).zero?
      return :Buzz if (i % 5).zero?
    end

  end
end
