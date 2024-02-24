class AddKindOfToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :kind_of, :integer, null: false, default: 0
  end
end
