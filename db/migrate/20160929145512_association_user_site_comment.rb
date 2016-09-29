class AssociationUserSiteComment < ActiveRecord::Migration
  def change
    add_column :comments, :body, :text

    add_belongs_to :sites, :user
    add_belongs_to :comments, :user
    add_belongs_to :comments, :site
  end
end
