# frozen_string_literal: true

module Sample
  class CsvToSql

    OUTPUTS_DIR = "./files/outputs/"
    INSERT_TABLE_NAME = "xxx"

    def initialize(path)
      @path = path
    end

    def execute
      CSV.foreach(@path) do |row|
        File.open(output_path, "a") do |file|
          file.write("INSERT INTO #{INSERT_TABLE_NAME} (column1, column2, column3) VALUES (#{row[0]}, #{row[1]}, #{row[2]});\n")
        end
      end
    end

    private

    def output_path
      OUTPUTS_DIR + File.basename(@path, ".*") + ".sql"
    end

  end
end
