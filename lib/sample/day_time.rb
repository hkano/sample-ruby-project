# frozen_string_literal: true

module Sample
  class DayTime

    def initialize(time)
      @time = time.present? ? Time.parse(time) : Time.now
    end

    def execute
      puts "Time: #{@time}"
      puts "Beginning of day: #{@time.beginning_of_day}"
      puts "End of day: #{@time.end_of_day}"
      puts "Yesterday: #{@time.yesterday}"
      puts "Tomorrow: #{@time.tomorrow}"
      puts "1 hour ago: #{@time.ago(1.hour)}"
      puts "1 hour since: #{@time.since(1.hour)}"
      puts "Timestamp: #{@time.to_i}"
    end

  end
end
