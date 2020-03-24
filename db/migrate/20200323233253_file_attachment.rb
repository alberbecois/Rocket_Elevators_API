class FileAttachment < ActiveRecord::Migration[5.2]
  def change
    change_column :leads, :attached_file, :binary, :limit => 10.megabyte
  end
end
