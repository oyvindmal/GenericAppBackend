class CreateGenericInstanceAttributes < ActiveRecord::Migration
  def change
    create_table :generic_instance_attributes do |t|
      t.references :generic_instance
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
