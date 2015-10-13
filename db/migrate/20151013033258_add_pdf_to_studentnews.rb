class AddPdfToStudentnews < ActiveRecord::Migration
  def change
    add_column :studentnews, :pdf, :string
  end
end
