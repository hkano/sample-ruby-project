# frozen_string_literal: true

module Sample
  class CsvToSql

    OUTPUTS_DIR = "./files/outputs/"
    INSERT_TABLE_NAME = "table_name"

    def initialize(path)
      @path = path
    end

    def execute
      before_id = 0
      values = []

      CSV.foreach(@path) do |row|
        next if row[0].to_i.zero?

        if before_id != row[0].to_i
          if values.length > 0
            write_file insert_sql(values)
            values = []
          end
          write_file delete_sql(row[0])
          before_id = row[0].to_i
        end
        values.push("(#{row[0]}, #{row[1]}, #{row[2]}, #{row[3]}, now(), now())")
      end

      if values.length > 0
        write_file insert_sql(values)
        values = []
      end
    end

    private

    def output_path
      OUTPUTS_DIR + File.basename(@path, ".*") + ".sql"
    end

    def write_file(text)
      File.open(output_path, "a") do |file|
        file.write text
      end
    end

    def insert_sql(values)
      "INSERT INTO\n  `#{INSERT_TABLE_NAME}` (`id`, `column_1`, `column_2`, `column_3`, `created_at`, `updated_at`)\nVALUES\n  #{values.join(",\n  ")};\n\n"
    end

    def delete_sql(id)
      "DELETE FROM `#{INSERT_TABLE_NAME}` WHERE `id` = #{id};\n"
    end
  end
end
