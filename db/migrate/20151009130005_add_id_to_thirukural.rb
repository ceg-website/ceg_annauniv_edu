class AddIdToThirukural < ActiveRecord::Migration
  def change
    add_column :thirukurals, :idr, :integer
  end
end
