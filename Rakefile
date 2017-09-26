require "./lib/sample/fizz_buzz"

desc "FizzBuzz"
task :fizz_buzz, [:count] do |task, args|
  Sample::FizzBuzz.new(args[:count]).execute
end

