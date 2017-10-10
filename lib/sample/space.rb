# frozen_string_literal: true

module Sample
  class Space

    def initialize
    end

    def execute
      puts "# nil?"
      puts "HalfWidth: #{' '.nil?}"
      puts "FullWidth: #{'　'.nil?}"
      puts "Tab: #{'	'.nil?}"
      puts "# empty?"
      puts "HalfWidth: #{' '.empty?}"
      puts "FullWidth: #{'　'.empty?}"
      puts "Tab: #{'	'.empty?}"
      puts "# blank?"
      puts "HalfWidth: #{' '.blank?}"
      puts "FullWidth: #{'　'.blank?}"
      puts "Tab: #{'	'.blank?}"
      puts "# present?"
      puts "HalfWidth: #{' '.present?}"
      puts "FullWidth: #{'　'.present?}"
      puts "Tab: #{'	'.present?}"
    end

  end
end
