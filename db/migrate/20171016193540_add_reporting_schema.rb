class AddReportingSchema < ActiveRecord::Migration[5.1]
  def up
    sql = <<-SQL
    CREATE SCHEMA IF NOT EXISTS reporting;
    GRANT ALL ON SCHEMA reporting TO sherilyn;
    SQL
    execute(sql)
  end

  def down
    sql = "DROP SCHEMA IF EXISTS reporting;"
    execute(sql)
  end
end
