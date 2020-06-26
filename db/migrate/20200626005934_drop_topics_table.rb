class DropTopicsTable < ActiveRecord::Migration[6.0]
  def change 
    remove_column :blogs, :topic_id
  end
end
