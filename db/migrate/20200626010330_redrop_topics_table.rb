class RedropTopicsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :topics
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
