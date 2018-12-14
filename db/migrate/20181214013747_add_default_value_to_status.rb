class AddDefaultValueToStatus < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :status, false
    change_column_default :comments, :status, 'unapproved'
  end
end
