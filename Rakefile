require "active_support"
require "active_support/core_ext"
require "nokogiri"
require "open-uri"

require "./lib/sample/crawler"
require "./lib/sample/day_time"
require "./lib/sample/fizz_buzz"

namespace :sample do
  desc "Crawler"
  task :crawler, [:url] do |task, args|
    Sample::Crawler.new(args[:url]).execute
  end

  desc "DayTime"
  task :day_time, [:time] do |task, args|
    Sample::DayTime.new(args[:time]).execute
  end

  desc "FizzBuzz"
  task :fizz_buzz, [:count] do |task, args|
    Sample::FizzBuzz.new(args[:count]).execute
  end
end
