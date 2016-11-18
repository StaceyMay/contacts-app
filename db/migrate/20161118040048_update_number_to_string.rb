class UpdateNumberToString < ActiveRecord::Migration[5.0]
  def change
    change_column :contacts, :number, :string
  end
end
