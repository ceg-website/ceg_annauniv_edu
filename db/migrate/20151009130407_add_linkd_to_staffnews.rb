class AddLinkdToStaffnews < ActiveRecord::Migration
  def change
    add_column :staffnews, :linkd, :string
  end
end
