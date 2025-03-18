class AddColumnToUsers < ActiveRecord::Migration[8.0]
  def change

    create_enum :user_status, [:pending, :active, :inactive]

    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.enum :status, enum_type: :user_status, default: :pending
      t.integer :version, default: 0
    end
 
  end
end