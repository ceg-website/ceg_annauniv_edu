class AddIspdfToStaffnews < ActiveRecord::Migration
  def change
    add_column :staffnews, :ispfd, :boolean, :default => true
  end
end
