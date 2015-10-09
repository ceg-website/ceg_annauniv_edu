class AddIdToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :idr, :integer
  end
end
