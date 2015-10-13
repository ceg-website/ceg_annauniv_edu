class AddPdfToStaffnews < ActiveRecord::Migration
  def change
    add_column :staffnews, :pdf, :string
  end
end
