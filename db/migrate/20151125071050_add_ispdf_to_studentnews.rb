class AddIspdfToStudentnews < ActiveRecord::Migration
  def change
    add_column :studentnews, :ispfd, :boolean, :default => true
  end
end
