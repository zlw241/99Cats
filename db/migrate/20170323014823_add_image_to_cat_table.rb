class AddImageToCatTable < ActiveRecord::Migration
  def change
    add_attachment :cats, :image
  end
end
