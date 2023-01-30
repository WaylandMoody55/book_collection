class AddNewColumnsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :author, :string
    add_column :books, :published_date, :date
    add_column :books, :price, :decimal
  end
end
