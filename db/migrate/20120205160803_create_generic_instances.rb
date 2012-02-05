class CreateGenericInstances < ActiveRecord::Migration
  def change
    create_table :generic_instances do |t|
      t.references :generic_model

      t.timestamps
    end
    add_index :generic_instances, :generic_model_id
  end
end
