class AddSlugToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :slug, :string
    add_index :portfolios, :slug, unique: true
  end
end
