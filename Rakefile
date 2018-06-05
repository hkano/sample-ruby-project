require "active_support"
require "active_support/core_ext"
require "csv"
require "nokogiri"
require "open-uri"

require "./lib/sample/crawler"
require "./lib/sample/csv_to_sql"
require "./lib/sample/day_time"
require "./lib/sample/fizz_buzz"
require "./lib/sample/space"

namespace :sample do
  desc "Crawler"
  task :crawler, [:url] do |task, args|
    Sample::Crawler.new(args[:url]).execute
  end

  desc "CsvToSql"
  task :csv_to_sql, [:path] do |task, args|
    Sample::CsvToSql.new(args[:path]).execute
  end

  desc "DayTime"
  task :day_time, [:time] do |task, args|
    Sample::DayTime.new(args[:time]).execute
  end

  desc "FizzBuzz"
  task :fizz_buzz, [:count] do |task, args|
    Sample::FizzBuzz.new(args[:count]).execute
  end

  desc "Space"
  task :space do
    Sample::Space.new().execute
  end
end
