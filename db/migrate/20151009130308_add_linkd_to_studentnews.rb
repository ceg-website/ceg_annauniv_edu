class AddLinkdToStudentnews < ActiveRecord::Migration
  def change
    add_column :studentnews, :linkd, :string
  end
end
