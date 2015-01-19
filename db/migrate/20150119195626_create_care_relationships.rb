class CreateCareRelationships < ActiveRecord::Migration
  def change
    create_table :care_relationships do |t|
      t.integer :animal_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
