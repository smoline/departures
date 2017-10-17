class JuneDeparture < ApplicationRecord
  self.table_name = "reporting.june_departures"

  def self.refresh
    Scenic.database.refresh_materialized_view(table_name, concurrently: false, cascade: false)
  end
end
