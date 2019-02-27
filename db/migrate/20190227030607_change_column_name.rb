class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :page_count, :pageCount
    rename_column :books, :published, :publishedDate
  end
end
