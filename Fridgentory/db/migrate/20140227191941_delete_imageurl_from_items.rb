class DeleteImageurlFromItems < ActiveRecord::Migration
  def change
  remove_column :items, :image_url
  end
end
