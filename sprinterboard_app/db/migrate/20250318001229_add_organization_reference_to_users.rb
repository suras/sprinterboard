class AddOrganizationReferenceToUsers < ActiveRecord::Migration[8.0]
  def change
    change_table :users do |t|
      t.references :organization, foreign_key: true, null: false
    end
  end
end
