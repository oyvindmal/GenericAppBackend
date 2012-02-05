class CreateGenericAttributes < ActiveRecord::Migration
  def change
    create_table :generic_attributes do |t|
      t.string :name
      t.references :generic_model

      t.timestamps
    end
    add_index :generic_attributes, :generic_model_id
  end
end
