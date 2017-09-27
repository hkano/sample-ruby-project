require "active_support"
require "active_support/core_ext"

require "./lib/sample/day_time"
require "./lib/sample/fizz_buzz"

namespace :sample do
  desc "DayTime"
  task :day_time, [:time] do |task, args|
    Sample::DayTime.new(args[:time]).execute
  end

  desc "FizzBuzz"
  task :fizz_buzz, [:count] do |task, args|
    Sample::FizzBuzz.new(args[:count]).execute
  end
end
